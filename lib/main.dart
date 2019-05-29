import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginfirebase/pages/home/home.bloc.dart';
import 'package:loginfirebase/router.factory.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final _blocHome = HomeBloc();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.black));
    return MaterialApp(
        onGenerateRoute: RouterGenerator.generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
    );
  }
}
