import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.onPressed,
    this.text,
    super.key,
  });
  VoidCallback? onPressed;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 240, right: 20),
      child: MaterialButton(
          color: Colors.white,
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$text',
                style: TextStyle(color: Color(0xFF26435F)),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xFF26435F),
              )
            ],
          )),
    );
  }
}
