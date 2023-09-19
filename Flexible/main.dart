import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sky Digital'),
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          tooltip: 'Menu',
        ),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // padding:EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Colors.pink[300],
                    height: 100,
                    child: Image.asset('assets/images/r.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.green,
                    child: Image.asset('assets/images/r.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    color: Colors.amber,
                    child: Image.asset('assets/images/r.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
