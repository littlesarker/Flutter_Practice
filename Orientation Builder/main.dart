import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const apptittle = 'Orientation Builder';

    return const MaterialApp(
      title: apptittle,
      home: OrientationList(
        tittle: apptittle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String tittle;

  const OrientationList({Key? key, required this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(9, (index) {
            return Center(
              child: Text(
                'C $index',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            );
          }),
        );
      }),
    );
  }
}
