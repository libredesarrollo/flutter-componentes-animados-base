import 'package:flutter/material.dart';

class Reto2 extends StatefulWidget {
  Reto2({Key? key}) : super(key: key);

  @override
  State<Reto2> createState() => _Reto2State();
}

class _Reto2State extends State<Reto2> {
  bool _expanded = false;
  final double size = 50.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            AnimatedPositioned(
              top: _expanded ? 0 : size,
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 200,
                height: size,
                color: Colors.amber,
              ),
            ),
            Positioned(
                top: size,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: size,
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
