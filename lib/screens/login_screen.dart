
import 'package:flutter/material.dart';
import 'package:ui_food_app_homwork_project_01/screens/home_screen.dart';
import 'package:ui_food_app_homwork_project_01/screens/register_screen.dart';

import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailAccount = TextEditingController();
  final TextEditingController _passwordAccount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                'Login to',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'find the best food',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 130,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  TextField(
                    controller: _emailAccount,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(Icons.mail_outline, color: Colors.black,),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Password', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  TextField(
                    controller: _passwordAccount,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(Icons.lock_outline_rounded, color: Colors.black,),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  child: const Text('Forget Password?', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen()));
                  },
                ),
              ),
              //  button
              Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[300],
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(emailAccount: _emailAccount.text, passwordAccount: _passwordAccount.text,)));
                          });
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
                        )),
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
                            height: 20,
                            width: 20,
                            child: Image(
                              image: AssetImage('assets/png/facebook.png'),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'Sign up with Facebook',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'BalsamiqSans'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account? ', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  GestureDetector(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
