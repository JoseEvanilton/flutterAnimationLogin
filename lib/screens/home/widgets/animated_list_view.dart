import 'package:flutter/material.dart';
import 'package:login_screen/screens/home/widgets/list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListDate(
          title: "Estudar Flutter'",
          subtitle: "Com o curso de Flutter",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 5,
        ),
        ListDate(
          title: "Estudar Flutter 5",
          subtitle: "Com o curso de Flutter2",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 4,
        ),
        ListDate(
          title: "Estudar Flutter 4",
          subtitle: "Com o curso de Flutter3",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 3,
        ),
        ListDate(
          title: "Estudar Flutter 3",
          subtitle: "Com o curso de Flutter 1",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 2,
        ),
        ListDate(
          title: "Estudar Flutter",
          subtitle: "Com o curso de Flutter",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListDate(
          title: "Estudar Flutter 2",
          subtitle: "Com o curso de Flutter 2",
          image: AssetImage("images/perfil.jpg"),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
