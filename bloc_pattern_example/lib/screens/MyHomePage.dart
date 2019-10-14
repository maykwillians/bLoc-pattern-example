import 'package:bloc_pattern_example/bloc/MyHomePageBloc.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  MyHomePageBloc myHomePageBloc = MyHomePageBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: myHomePageBloc.output,
              builder: (context, snapshot) {
                return Text(
                  '${myHomePageBloc.counter}',
                  style: Theme.of(context).textTheme.display1,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: myHomePageBloc.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}