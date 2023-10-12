import 'package:flutter/material.dart';

void main() {
  runApp(CheckBox());
}
class CheckBox extends StatelessWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Check Box Test')),
        body: const Center(
          child: CheckBoxExample(),
        ),
      ),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExample();
}

class _CheckBoxExample extends State<CheckBoxExample> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: ischecked,
      onChanged: (bool? value) {
        setState(() {
          ischecked = value!;
        });
      },
    );
  }
}
