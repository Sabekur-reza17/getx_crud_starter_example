import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefExample extends StatelessWidget {
  const SharedPrefExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared pref demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeSharedPref(),
    );
  }
}
class HomeSharedPref extends StatefulWidget {
  const HomeSharedPref({Key? key}) : super(key: key);

  @override
  State<HomeSharedPref> createState() => _HomeSharedPrefState();
}

class _HomeSharedPrefState extends State<HomeSharedPref> {
  var newLaunch;

  @override
  void initState() {

  }
  loadNewLaunch() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      bool _newLanuch = ((sharedPreferences.getBool('newLaunch') ?? true));
      print("newLanch $_newLanuch");
      newLaunch = _newLanuch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

