import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String emailAccount, passwordAccount;

  HomeScreen({
    super.key,
    required this.emailAccount,
    required this.passwordAccount,
    // required this.phone,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email: ${widget.emailAccount}',
              style: const TextStyle(fontSize: 30, fontFamily: 'BalsamiqSans'),
            ),
            Text(
              'Password: ${widget.passwordAccount}',
              style: const TextStyle(fontSize: 30, fontFamily: 'BalsamiqSans'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          // account
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
