import 'package:flutter/material.dart';

class ContainerCrossFade extends StatefulWidget {
  const ContainerCrossFade({Key? key}) : super(key: key);

  @override
  State<ContainerCrossFade> createState() => _ContainerCrossFadeState();
}

class _ContainerCrossFadeState extends State<ContainerCrossFade> {
  bool _showFirst = true;

  void updateWidget() {
    setState(() {
      _showFirst = !_showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 600),
          crossFadeState:
              _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text('Primero',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
          secondChild: Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Center(
              child: Text('Segundo',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(onPressed: updateWidget, child: const Text('Cambiar')),
      ],
    );
  }
}
