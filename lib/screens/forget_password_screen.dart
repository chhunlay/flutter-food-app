import 'package:flutter/material.dart';
import 'changed_password_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _email = TextEditingController();
  bool _validateEmail = false;

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
                'Forgot',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Password?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 130,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: 'Enter your email account',
                        hintStyle: const TextStyle(fontFamily: 'BalsamiqSans'),
                        suffixIcon: const Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        ),
                        errorText:
                            _validateEmail ? "invalid email, please try again!" : null),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Please provide your email to reset your password, please don\'n share any data to other people',
                style:
                    TextStyle(color: Colors.grey, fontFamily: 'BalsamiqSans'),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[300],
                    ),
                    onPressed: () {
                      setState(() {
                        _email.text.isEmpty?_validateEmail = true:_validateEmail = false;
                        if(_email.text == 'chhunlayflutter@gmail.com'){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ChangePasswordScreen()));
                        }
                      });
                    },
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                          fontFamily: 'BalsamiqSans',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Remember now?',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: const Text(
                      'Login here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 230,
              ),
              const Align(
                // alignment: Alignment.,
                child: Text(
                  'Need help?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
