import 'package:flutter/material.dart';
import 'package:login_screen/bloc/bloc_navigation/navigation_bloc.dart';
import 'package:login_screen/screens/home/home_screen.dart';

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
