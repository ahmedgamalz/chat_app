import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(top: 27, bottom: 27, right: 16, left: 16),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32),
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32)),
            color: kPrimaryColor),
        child: Text(
          'Hi i\'m jimmy',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}