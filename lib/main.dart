import 'package:flutter/material.dart';

//made by deepinderSingh
void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Flutter', 'is', 'cool', 'and', 'Awesome!'];
  String displayedString = "Hello World!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 35.0)),
              Padding(padding: EdgeInsets.all(9.3)),
              RaisedButton(
                child: Text(
                  'Press me',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
