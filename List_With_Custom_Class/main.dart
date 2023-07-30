import 'package:flutter/material.dart';
import 'quote.dart';


void main() => runApp(MaterialApp(
      home: Qlist(),
    ));

class Qlist extends StatefulWidget {
  @override
  State<Qlist> createState() => _QlistState();
}

class _QlistState extends State<Qlist> {
  List<Quote> quotes = [
    Quote(text: 'My name is Rahim Sarker', author: 'Hafsa'),
    Quote(text: 'My name is Abu Nayeem Sarker', author: 'Abu'),
    Quote(text: 'My name is Jarna khanom', author: 'jarna'),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:quotes.map((quote) => Text('${quote.author} - ${quote.text}')).toList(),
      ),
    );
  }
}
