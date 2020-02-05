import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obsure;
  final IconData icon;

  InputField({this.hint, this.obsure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.white,
        width: 0.5,
      ))),
      child: TextFormField(
        obscureText: obsure,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white, fontSize: 15),
            contentPadding:
                EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 5)),
      ),
    );
  }
}
