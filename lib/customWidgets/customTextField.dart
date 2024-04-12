import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.hintText,
    this.icon,
    this.onChanged,
    super.key,
  });
  Function(String)? onChanged;
  String? hintText;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field is required';
            }
          },
          onChanged: onChanged,
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
