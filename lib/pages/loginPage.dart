import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270, bottom: 7),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 200, bottom: 27),
            child: Text(
              'Please sign in to continue',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: MaterialButton(
                color: Color(0xFF187B87),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text('LOGIN'), Icon(Icons.arrow_forward)],
                )),
          ),
          Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Row(
              children: [
                Text('Don\'t have an account ?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'sign up',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
