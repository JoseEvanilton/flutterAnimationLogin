import 'package:flutter/material.dart';
import 'package:login_screen/bloc/bloc_navigation/navigation_bloc.dart';


class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Perfil",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
