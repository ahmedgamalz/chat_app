import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.text,
    super.key,
  });
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 240, right: 20),
      child: MaterialButton(
          color: Colors.white,
          onPressed: () {},
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
