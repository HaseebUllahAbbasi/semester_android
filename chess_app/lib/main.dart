import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Welcome to Flutter'),
        ),
        body:  Center(
          child: HelloText(),
      ),
      ),
    );
  }
}
class RandomWords  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _RandomWordsStateList();
}

class _RandomWordsState extends State<RandomWords>
{
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
class HelloText extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HelloState();
  }
}
class HelloState extends State<HelloText>
{
  String helloText ='';

  final myController  =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TextField(
        onChanged: (text)=> sayHello(text),
        controller: myController,
      ),Text(helloText)],
    );
  }

  sayHello(String text) {
    setState(() {
      helloText = 'Hello'+ text.toUpperCase();
    });
  }
}


class _RandomWordsStateList extends State<RandomWords> {
  final _suggestions = <WordPair>[];                 // NEW
  final _biggerFont = const TextStyle(fontSize: 18.0);


  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        // The itemBuilder callback is called once per suggested
        // word pairing, and places each suggestion into a ListTile
        // row. For even rows, the function adds a ListTile row for
        // the word pairing. For odd rows, the function adds a
        // Divider widget to visually separate the entries. Note that
        // the divider may be difficult to see on smaller devices.
        itemBuilder: (BuildContext _context, int i) {
          // Add a one-pixel-high divider widget before each row
          // in the ListView.
          if (i.isOdd) {
            return Divider();
          }

          // The syntax "i ~/ 2" divides i by 2 and returns an
          // integer result.
          // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
          // This calculates the actual number of word pairings
          // in the ListView,minus the divider widgets.
          final int index = i ~/ 2;
          // If you've reached the end of the available word
          // pairings...
          if (index >= _suggestions.length) {
            // ...then generate 10 more and add them to the
            // suggestions list.
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); // Delete these...
    //return Text(wordPair.asPascalCase); // ... two lines.

    return Scaffold (                     // Add from here...
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );                                      // ... to here.
  }
// ···
}