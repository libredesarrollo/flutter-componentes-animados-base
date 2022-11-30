import 'package:flutter/material.dart';

class ContainerPosition extends StatefulWidget {
  ContainerPosition({Key? key}) : super(key: key);

  @override
  State<ContainerPosition> createState() => _ContainerPositionState();
}

class _ContainerPositionState extends State<ContainerPosition> {
  late double screenWidget, screenHeight;
  bool _change = false;

  void updateWidget() {
    setState(() {
      _change = !_change;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidget = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedPositioned(
          // top: _change ? 100 : 0,
          // bottom: _change ? 100  : 0,
          // bottom: _change ? 0.5 * screenHeight  : 0,
          bottom: _change ? 0.5 * screenHeight - 100  : 0,
          // left:  _change ? 20 : 0,
          right:  _change ? 0.5 * screenWidget : 0,
          duration: const Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purpleAccent,
            child: const Center(
              child: Text('Animated'),
            ),
          ),
        ),
        TextButton(onPressed: updateWidget, child: const Text('Animated'))
      ],
    );
  }
}
