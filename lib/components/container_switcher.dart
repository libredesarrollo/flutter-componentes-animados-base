import 'package:flutter/material.dart';

class ContainerSwitcher extends StatefulWidget {
  const ContainerSwitcher({Key? key}) : super(key: key);

  @override
  State<ContainerSwitcher> createState() => _ContainerSwitcherState();
}

class _ContainerSwitcherState extends State<ContainerSwitcher> {
  bool _isVisible = true;

  void updateWidget() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: AnimatedSwitcher(
          duration: const Duration(seconds: 2),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return RotationTransition(
              turns: animation,
              child: FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
            );
          },
          child: _isVisible
              ? Container(
                  key: const ValueKey('first'),
                  height: 50.0,
                  width: 50.0,
                  color: Colors.purpleAccent,
                )
              : const SizedBox(key: ValueKey('second')),
        )),
        TextButton(onPressed: updateWidget, child: const Text('Animate'))
      ],
    );
  }
}
