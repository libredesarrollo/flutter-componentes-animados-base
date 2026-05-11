import 'package:flutter/material.dart';

class ContainerTextStyle extends StatefulWidget {
  const ContainerTextStyle({Key? key}) : super(key: key);

  @override
  State<ContainerTextStyle> createState() => _ContainerTextStyleState();
}

class _ContainerTextStyleState extends State<ContainerTextStyle> {
  bool _change = false;

  void updateWidget() {
    setState(() {
      _change = !_change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          style: TextStyle(
            fontSize: _change ? 40 : 20,
            fontWeight: _change ? FontWeight.bold : FontWeight.normal,
            color: _change ? Colors.deepPurple : Colors.grey,
            letterSpacing: _change ? 4.0 : 1.0,
          ),
          child: const Text('Flutter Animations'),
        ),
        const SizedBox(height: 20),
        TextButton(onPressed: updateWidget, child: const Text('Animate')),
      ],
    );
  }
}
