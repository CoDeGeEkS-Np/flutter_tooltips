import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = "Nothing Yet";
  @override

  void _onPressed() => setState(()=> _value = DateTime.now().toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body:Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text(_value),
              IconButton(icon: Icon(Icons.timer), onPressed: _onPressed,
              tooltip: "Click ME",
                //This tooltips Shows the item what you are going to press when you hover over the items
              )
            ],
          ),
        ),

      )
    );
  }

}
