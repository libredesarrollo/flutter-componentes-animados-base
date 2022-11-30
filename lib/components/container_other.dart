import 'package:flutter/material.dart';

class ContainerOther extends StatefulWidget {
  ContainerOther({Key? key}) : super(key: key);

  @override
  State<ContainerOther> createState() => _ContainerOtherState();
}

class _ContainerOtherState extends State<ContainerOther> {
  bool _change = false;

  void updateWidget() {
    _change = !_change;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          padding: EdgeInsets.all(_change ? 100: 0),
          child: AnimatedScale(
            scale: _change ? 1 : 1,
            // alignment: Alignment.bottomLeft,
            duration: const Duration(milliseconds: 500),
            child: AnimatedRotation(
              duration: const Duration(milliseconds: 500),
              turns: _change ? .5 : 0,
              child: AnimatedSize(
                duration: const Duration(milliseconds: 500),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: _change ? 1.0 : 0.2,
                  child: Container(
                    width: _change ? 200 : 200,
                    height: _change ? 200 : 200,
                    color: Colors.deepPurple,
                    child: const Center(child:  Text('Animate')),
                  ),
                ),
              ),
            ),
          ),
        ),
        TextButton(onPressed: updateWidget, child: const Text('Animate'))
      ],
    );
  }
}
