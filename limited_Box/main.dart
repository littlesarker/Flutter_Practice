import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Limited Box Example",
      home: Scaffold(
        appBar: AppBar(title: Text('Limited Box')),
        body: UnconstrainedBox(
          child: LimitedBox(
            maxHeight: 150,
            maxWidth: 150,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
