import 'package:flutter/material.dart';
class CustomEditInput extends StatefulWidget {
  const CustomEditInput({Key? key}) : super(key: key);

  @override
  State<CustomEditInput> createState() => _CustomEditInputState();
}

class _CustomEditInputState extends State<CustomEditInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (inputValue){

              },
              decoration: const InputDecoration(
                errorText: "Please enter a number",
                errorStyle: TextStyle(color: Colors.deepPurpleAccent),
                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purpleAccent)),
                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurpleAccent))
              ),
            )
          ],
        ),
      ),
    );
  }
}
