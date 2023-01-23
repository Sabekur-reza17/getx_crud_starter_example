import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getx_crud_starter_example/presentation/sharedprefexample/profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  resetNewLaunch() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    print('SplashScreen : pref : ${sharedPreferences.getBool('newLaunch')}');
    if (sharedPreferences.containsKey('newLaunch')) {
      sharedPreferences.setBool('newLaunch', false);
    } else {
      sharedPreferences.setBool('newLaunch', false);
    }
  }

  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              resetNewLaunch();
              return const ProfileScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('splash Screen',style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
    );
  }
}
