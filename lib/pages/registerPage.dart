import 'package:chat_app/constants.dart';
import 'package:chat_app/customWidgets/customButton.dart';
import 'package:chat_app/customWidgets/customTextField.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  static String id = 'register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
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
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 200, bottom: 10),
            child: Text(
              'Please sign up to continue',
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
            text: 'REGISTER',
          ),
          SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account ?',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'login',
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
