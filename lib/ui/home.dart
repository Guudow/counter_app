import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }

}

class HomeScreenState extends State<Home> {

  int _counter = 0;
  void _increaseCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('using Buttons'),
      ),

    body: new Center(
      child: new Text('$_counter',
      style: new TextStyle(
        color: _counter % 2 == 0 ? Colors.blueAccent : Colors.red,
        fontSize: 40.0
      ))
    ),

    floatingActionButton: new FloatingActionButton(
        onPressed: _increaseCounter, 
        backgroundColor: Colors.blue,
        child: new Icon(Icons.add),),  
    );

  }
}
