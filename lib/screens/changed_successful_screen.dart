import 'package:flutter/material.dart';
import 'package:ui_food_app_homwork_project_01/screens/login_screen.dart';

class ChangedSuccessfulScreen extends StatelessWidget {
  const ChangedSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: const  [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Changed!',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BalsamiqSans'),
                    ),
                    SizedBox(height: 70,),
                    Image(
                        image: AssetImage(
                            'assets/png/change_password_successfully.png')),
                    SizedBox(
                      height: 90,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: 190,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      backgroundColor: Colors.orange[300],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: const Text('Get Started', style: TextStyle(fontFamily: 'BalsamiqSans'),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
