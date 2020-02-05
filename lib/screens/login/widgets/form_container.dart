import 'package:flutter/material.dart';
import 'package:login_screen/screens/login/widgets/input_field.dart';



class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: "Username",
              obsure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: "Password",
              obsure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
