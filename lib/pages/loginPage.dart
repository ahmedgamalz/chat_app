import 'package:chat_app/constants.dart';
import 'package:chat_app/customWidgets/customButton.dart';
import 'package:chat_app/customWidgets/customTextField.dart';
import 'package:chat_app/pages/RegisterPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Image(
            image: AssetImage('assets/images/scholar.png'),
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Scholar Chat',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 25)),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 245, bottom: 7, top: 25),
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 200, bottom: 10),
            child: Text(
              'Please sign in to continue',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          CustomTextField(hintText: 'Email', icon: Icon(Icons.email)),
          CustomTextField(
            hintText: 'Password',
            icon: const Icon(Icons.lock),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'LOGIN',
          ),
          SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account ?',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                child: Text(
                  'register',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
