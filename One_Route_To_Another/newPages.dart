import 'package:flutter/material.dart';

class N_Pages extends StatefulWidget {
  const N_Pages({Key? key}) : super(key: key);

  @override
  State<N_Pages> createState() => _N_PagesState();
}

class _N_PagesState extends State<N_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
