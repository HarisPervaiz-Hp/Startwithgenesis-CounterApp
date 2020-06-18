import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xffFBB034),
      accentColor: Color(0xffFBB034),
    ),
    title: "Counter App",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: new Container(
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new FloatingActionButton(
                onPressed: add,
                child: new Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xffFBB034),
              ),
              new Text('$_n',
                  style: new TextStyle(fontSize: 60.0, color: Colors.black45)),
              new FloatingActionButton(
                onPressed: minus,
                child: new Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xffFBB034),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
