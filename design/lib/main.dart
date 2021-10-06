import 'package:flutter/material.dart';

void main() => runApp(Simple());

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
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(100.0),
                  width: 100.0,
                  height: 100.0,
                  color:Colors.orange,
                  child: Text("Simple Text")
              ),
            ],
          )
        ),
      )
    );
  }
}


class CircleExp extends StatelessWidget
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
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(100.0),
                    width: 200.0,
                    height:200.0,
                    child: Text("Simple Text"),
                    decoration: BoxDecoration(
                        color:Colors.orange,
                        shape:BoxShape.circle

                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}


class RectangleRadius extends StatelessWidget
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
              body: Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(100.0),
                      width: 200.0,
                      height:200.0,
                    child: Text("Simple Text"),
                    decoration: BoxDecoration(
                      color:Colors.orange,
                      shape:BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}


class GradiantExp extends StatelessWidget
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
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(100.0),
                    width: 200.0,
                    height:200.0,
                    child: Text("Simple Text"),
                    decoration: BoxDecoration(
                      color:Colors.orange,
                      gradient: LinearGradient(
                        begin: Alignment(0.1,-0.7),

                        end:Alignment(0.1,-0.5) ,
                          tileMode: TileMode.mirror,
                          colors:[Colors.pinkAccent.shade700,Colors.amberAccent.shade200]
                      ),
                      shape:BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight:  Radius.circular(30),
                      ),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}


class AdvanceGradient extends StatelessWidget
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
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(100.0),
                    width: 200.0,
                    height:200.0,
                    child: Text("Simple Text"),
                    decoration: BoxDecoration(
                      color:Colors.orange,
                      gradient: LinearGradient(
                          // begin: Alignment(0.1,-0.7),
                          //
                          // end:Alignment(0.1,-0.5) ,
                          tileMode: TileMode.mirror,


                          colors:[Colors.cyanAccent,Colors.orange,Colors.green]
                      ),
                      shape:BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight:  Radius.circular(30),
                      ),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}

class Simple extends StatelessWidget
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
              body: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(100.0),
                    width: 300.0,
                    height:300.0,
                    // child: FlutterLogo(),

                    decoration: BoxDecoration(

                      image:DecorationImage(
                          image:NetworkImage('https://bit.ly/flutter_tiger')
                      ),
                      color:Colors.orange,
                      shape:BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
