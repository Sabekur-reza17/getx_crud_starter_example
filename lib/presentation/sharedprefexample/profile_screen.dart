import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  clearSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('newLaunch');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'profile scree',
                style: TextStyle(fontSize: 40),
              ),
              FloatingActionButton(child:const Text('clear Share pref'),onPressed: () {
                clearSharedPref();
              })
            ],
          ),
        ),
      ),
    );
  }
}
