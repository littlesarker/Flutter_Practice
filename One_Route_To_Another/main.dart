import 'package:flutter/material.dart';
import 'newPages.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass data'),
        backgroundColor: Colors.green[300],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const N_Pages()),
                );
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Edit Location'),
            )
          ],
        ),
      ),
    );
  }
}
