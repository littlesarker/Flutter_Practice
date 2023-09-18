import 'package:flutter/material.dart';

void main() {
  runApp(RahimSarker());
}

class RahimSarker extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: RichText(
          text: const TextSpan(
              style: TextStyle(color: Colors.blue, fontSize: 42),
              children: <TextSpan>[
                TextSpan(
                    text: 'RichText Widget',
                    style: TextStyle(color: Colors.orange)),
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(decoration: TextDecoration.underline)),
              ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
