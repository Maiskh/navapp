import 'package:flutter/material.dart';

class FirstS extends StatefulWidget {
  FirstS({Key? key}) : super(key: key);

  @override
  State<FirstS> createState() => _FirstSState();
}

class _FirstSState extends State<FirstS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading:  IconButton( icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('First Screen '), 
        centerTitle: true),
        body: Container(),
      ),
    );
  }
}
