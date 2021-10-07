import 'package:flutter/material.dart';

void main() => runApp(EntryPoint());
class EntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter_1',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Welcome to Flutter_2'),
        ),
        body:  Center(
          child: CustomButtons(),
        ),
      ),
    );
  }
}
class CustomButtons extends StatelessWidget {
  const CustomButtons({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
        SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(onPressed:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }, child: Text("Vertical")),
              ElevatedButton(onPressed:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeTwo()),
                );
              }, child: Text("Horizontal"))
            ],
          )
        );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your app name as title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Title here on app bar '),
        ),
        backgroundColor: Colors.indigo[100],
        body: Center(

          child: Text("hi"),
        ),
      ),
    );
  }


}
class Home extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return(
    SingleChildScrollView(child:
    Container(
      width: sizeX,
      height: sizeY,
      color: Colors.white,
      child: Column(children:
      createSquares(10)
        ,
      ),
    ),)
    );
  }
  List<Widget> createSquares(int noSquares)
  {
    int  i=0;
    List colors = [Colors.purple,Colors.blue,Colors.purple[800], Colors.green,Colors.brown,Colors.deepPurple];
    List<Widget> squares = [];
    while(i<noSquares)
    {
      Container square = Container(
        color: colors[i%colors.length],
        width: 60,
        height:60,
        child: Text(i.toString()),

      );
      i++;
      squares.add(square);
    }
    return squares;
  }

}

class HomeTwo extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return(
        SingleChildScrollView(child:
        Container(
          width: sizeX,
          height: sizeY,
          color: Colors.white,
          child: Row(children:
          createSquares(10)
            ,
          ),
        ),)
    );
  }
  List<Widget> createSquares(int noSquares)
  {
    int  i=0;
    List colors = [Colors.purple,Colors.blue,Colors.purple[800], Colors.green,Colors.brown,Colors.deepPurple];
    List<Widget> squares = [];
    while(i<noSquares)
    {
      Container square = Container(
        color: colors[i%colors.length],
        width: 60,
        height:60,
        child: Text(i.toString()),

      );
      i++;
      squares.add(square);
    }
    return squares;
  }

}
