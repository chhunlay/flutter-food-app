import 'package:flutter/material.dart';
import 'package:ui_food_app_homwork_project_01/screens/code_verification_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Register',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'New account',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Full Name',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your full name',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(
                        Icons.badge_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email account',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Phone',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(
                        Icons.phone_android_rounded,
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CodeVerificationScreen()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image(
                          image: AssetImage('assets/png/facebook.png'),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign up with Facebook',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'BalsamiqSans'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BalsamiqSans'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
