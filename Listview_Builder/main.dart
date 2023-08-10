import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LB(),
  ));
}

class LB extends StatefulWidget {
  const LB({Key? key}) : super(key: key);

  @override
  State<LB> createState() => _LBState();
}

class _LBState extends State<LB> {
  final List<String> entries = <String>['Md.Rahim ', 'Sarker', 'srhim'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Builder'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Names ${entries[index]}')),
              );
            }));
  }
}
