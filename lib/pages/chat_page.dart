import 'package:chat_app/constants.dart';
import 'package:chat_app/customWidgets/customChatBubble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static String id = 'chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              height: 50,
            ),
            Text(
              'Chat',
              style: TextStyle(fontFamily: "Pacifico"),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ChatBubble(),
      ),
    );
  }
}
