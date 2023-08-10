import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: list(),
  ));
}

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview by Container'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.grey[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.green[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),


    );
  }
}
