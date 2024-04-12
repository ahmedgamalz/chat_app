import 'package:chat_app/constants.dart';
import 'package:chat_app/customWidgets/customButton.dart';
import 'package:chat_app/customWidgets/customTextField.dart';
import 'package:chat_app/helper/show_snackBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});
  static String id = 'register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;

  bool? isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading!,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Form(
          key: formKey,
          child: ListView(
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
                padding:
                    EdgeInsets.only(left: 13, right: 245, bottom: 7, top: 25),
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
              CustomTextFormField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                  icon: Icon(Icons.email)),
              CustomTextFormField(
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
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    try {
                      await registerUser();

                      showSnackBar(context, 'Success');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(context, 'Weak password');
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(context, 'Email already exists');
                      }
                    } catch (e) {
                      showSnackBar(context, 'There was an error');
                    }
                    isLoading = false;
                    setState(() {});
                  } else {}
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
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    var auth = FirebaseAuth.instance;
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
  }
}
