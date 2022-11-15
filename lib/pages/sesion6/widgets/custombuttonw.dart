import 'package:flutter/material.dart';

class CustomButtonW extends StatelessWidget {
  final Function incrementarb;
  final Function disminuirb;
  final Function resetb;

  const CustomButtonW(
      {super.key,
      required this.incrementarb,
      required this.disminuirb,
      required this.resetb});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 208, 255, 167),
          heroTag: const Text('btn3'),
          tooltip: 'Disminuir',
          child: const Icon(
            Icons.remove_circle_outline,
            color: Colors.black,
          ),
          onPressed: () => disminuirb(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 198, 243),
          heroTag: const Text('btn2'),
          tooltip: 'Reseteo',
          child: const Icon(
            Icons.restore,
            color: Colors.black,
          ),
          onPressed: () => resetb(),
        ),
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 238, 154),
          heroTag: const Text('btn1'),
          tooltip: 'Incrementar',
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () => incrementarb(),
        ),
      ],
    );
  }
}
