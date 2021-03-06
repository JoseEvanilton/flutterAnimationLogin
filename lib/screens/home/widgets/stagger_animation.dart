import 'package:flutter/material.dart';
import 'package:login_screen/screens/home/widgets/animated_list_view.dart';
import 'package:login_screen/screens/home/widgets/fade_container.dart';
import 'package:login_screen/screens/home/widgets/home_top.dart';

class StaggerAnimation extends StatelessWidget {

  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : controllerGrow = CurvedAnimation(
        parent: controller,
        curve: Curves.ease
      ),
      listSlidePosition = EdgeInsetsTween(
        begin: EdgeInsets.only(bottom: 0),
        end: EdgeInsets.only(bottom: 80) 
      ).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.325,
              0.8,
              curve: Curves.ease
            )
        )
      ),
      fadeAnimation = ColorTween(
        begin: Color.fromRGBO(43, 106, 198, 1.0),
        end: Color.fromRGBO(43, 106, 198, 0.0)
      ).animate(
        CurvedAnimation(parent: controller, curve: Curves.decelerate)
      );

  final Animation<double> controllerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> fadeAnimation;
  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrow: controllerGrow,
            ),
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeAnimation: fadeAnimation,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(animation: controller, builder: _buildAnimation),
      ),
    );
  }
}
