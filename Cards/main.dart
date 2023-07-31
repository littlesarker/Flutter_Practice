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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color:  Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color:Colors.grey[600],
              ),
            ),

          ],
        ),
      ),
    );

  }



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
        children:quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
