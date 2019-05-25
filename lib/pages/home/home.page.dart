import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Home Page', textAlign: TextAlign.center,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('teste texto centralizado'),
          RaisedButton(
            onPressed: () => Navigator.of(context).pushReplacementNamed('/login'),
            child: Text('Back to login'),
          )
        ],
        ),
      ),
    );
  }
}