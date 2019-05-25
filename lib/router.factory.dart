import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginfirebase/pages/home/home.page.dart';
import 'package:loginfirebase/pages/login/login.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
        break;
      default:
        return _errorRoute();
        break;
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Wrong route'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Icon(FontAwesomeIcons.frown),
              RaisedButton(
                onPressed: ()=> Navigator.pushReplacementNamed(_, '/'),
                child: Text('Back'),
              )
            ],
          ),
        ),
      );
    });
  }
}
