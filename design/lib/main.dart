import 'package:flutter/material.dart';

void main() => runApp(DotApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        accentColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Bilding Layout"),) ,
        body: Center(
          child: Text("Flutter Layout",style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.lightbulb_outline),
          onPressed: (){
          print('Clicked the Button');
          },
        ),
      ),
    );
  }
}

class DotApp extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return (
      MaterialApp(
        title: "Container App",
        home: Scaffold(
          appBar: AppBar(
            title:Text("Container"),
          ),
          body: Container(
            color:Colors.orange,
            child: Text("Simple Text")
          ),
        ),
      )
    );
  }
}

