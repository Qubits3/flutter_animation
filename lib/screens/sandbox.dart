import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key? key}) : super(key: key);

  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1.0;
  double _margin = 20.0;
  double _width = 200.0;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => setState(() {
                          _margin = 50.0;
                        }),
                    child: const Text("Animate margin")),
                ElevatedButton(
                    onPressed: () => setState(() {
                          _color = Colors.purple;
                        }),
                    child: const Text("Animate color")),
                ElevatedButton(
                    onPressed: () => setState(() {
                          _width = 400.0;
                        }),
                    child: const Text("Animate width")),
                ElevatedButton(onPressed: () => setState(() {
                  _opacity = 0.0;
                }), child: const Text("Animate opacity")),
                AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(milliseconds: 1000),
                    child: const Text(
                      "Hide Me",
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
          duration: const Duration(milliseconds: 1000)),
    );
  }
}
