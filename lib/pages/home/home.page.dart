import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginfirebase/enums/home.events.dart';
import 'package:loginfirebase/pages/home/home.bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final HomeBloc _homeBloc = BlocProvider.of<HomeBloc>(context);
    final HomeBloc _homeBloc = HomeBloc();

    return BlocBuilder(
      bloc: _homeBloc,
      builder: (BuildContext context, int count) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                'Home Page',
                textAlign: TextAlign.center,
              ),
            ),
            body: BlocProvider(
              bloc: _homeBloc,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('You have pushed the button this many times: $count'),
                    RaisedButton(
                      onPressed: () =>
                          Navigator.of(context).pushReplacementNamed('/login'),
                      child: Text('Back to login'),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () =>
                          _homeBloc.dispatch(CounterEvent.increment),
                      child: Icon(Icons.add),
                    ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    FloatingActionButton(
                      onPressed: () =>
                          _homeBloc.dispatch(CounterEvent.decrement),
                      child: Icon(Icons.remove),
                    )
                  ],
                )
              ],
            ));
      },
    );
  }
}
