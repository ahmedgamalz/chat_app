import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.hintText,
    this.icon,
    super.key,
  });
  String? hintText;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: '$hintText',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: icon,
            prefixIconColor: Colors.white,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
          ),
        ));
  }
}
