import 'package:flutter/material.dart';

import 'changed_successful_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Change',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'BalsamiqSans'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'New Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 130,
                  ),
                  Text(
                    'New Password',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter new password',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('New Password', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter new password',
                      hintStyle: TextStyle(fontFamily: 'BalsamiqSans'),
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please provide your email to reset your password, please don\'n share any data to other people',
                    style: TextStyle(color: Colors.grey, fontFamily: 'BalsamiqSans'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangedSuccessfulScreen()));
                  },
                  child: const Text(
                    'Change Password',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
