import 'package:chat_app/constants.dart';
import 'package:chat_app/customWidgets/customButton.dart';
import 'package:chat_app/customWidgets/customTextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'register';
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          const Image(
            image: AssetImage('assets/images/scholar.png'),
            height: 100,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Scholar Chat',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 25)),
            ],
          ),
          const SizedBox(
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
          CustomTextField(
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email',
              icon: Icon(Icons.email)),
          CustomTextField(
            onChanged: (data) {
              password = data;
            },
            hintText: 'Password',
            icon: const Icon(Icons.lock),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () async {
              try {
                var auth = FirebaseAuth.instance;
                UserCredential user = await auth.createUserWithEmailAndPassword(
                    email: email!, password: password!);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Weak password'),
                    ),
                  );
                } else if (e.code == 'email-already-in-use') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Email already exists'),
                    ),
                  );
                }
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Success'),
                ),
              );
            },
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
