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
          child: RandomWords(),
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


class _RandomWordsStateList extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
// ···
}