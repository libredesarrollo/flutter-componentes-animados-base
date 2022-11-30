import 'package:flutter/material.dart';

class ContainerAni extends StatefulWidget {
  const ContainerAni({Key? key}) : super(key: key);

  @override
  State<ContainerAni> createState() => _ContainerAniState();
}

class _ContainerAniState extends State<ContainerAni> {
  bool _change = false;

  void updateWidget() {
    setState(() {
      _change = !_change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1200),
            width: _change ? 400 : 200,
            height: _change ? 400 : 200,
            decoration: BoxDecoration(
                color: _change ? Colors.deepPurple : Colors.amber,
                // shape: _change ? BoxShape.rectangle : BoxShape.circle
                borderRadius: BorderRadius.circular(_change ? 2 : 100)),
            child: Text(
              'Animated',
              style: TextStyle(fontSize: _change ? 20 : 40),
            ),
          ),
        ),
        TextButton(onPressed: updateWidget, child: const Text('Animation'))
      ],
    );
  }
}
