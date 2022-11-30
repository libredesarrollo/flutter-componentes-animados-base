import 'package:flutter/material.dart';

class Reto1 extends StatefulWidget {
  Reto1({Key? key}) : super(key: key);

  @override
  State<Reto1> createState() => _Reto1State();
}

class _Reto1State extends State<Reto1> {
  int _change = 0;

  void updateWidget() {
    _change++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedPadding(
          onEnd: updateWidget,
          duration: const Duration(milliseconds: 500),
          padding: EdgeInsets.all(_change > 3 ? 100: 0),
          child: AnimatedScale(
            onEnd: updateWidget,
            scale: _change > 2 ? 3 : 1,
            // alignment: Alignment.bottomLeft,
            duration: const Duration(milliseconds: 500),
            child: AnimatedRotation(
              onEnd: updateWidget,
              duration: const Duration(milliseconds: 500),
              turns: _change > 1 ? .5 : 0,
              child: AnimatedSize(
               
                duration: const Duration(milliseconds: 500),
                child: AnimatedOpacity(
                  onEnd: updateWidget,
                  duration: const Duration(milliseconds: 500),
                  opacity: _change > 0 ? 1.0 : 0.2,
                  child: Container(
                    width: _change > 0 ? 200 : 200,
                    height: _change > 0 ? 200 : 200,
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
