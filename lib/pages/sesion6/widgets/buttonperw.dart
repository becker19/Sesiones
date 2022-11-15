import 'package:flutter/material.dart';

class ButtonPerW extends StatelessWidget {
  final Function incrementarb;
  final Function disminuirb;
  final Function resetb;

  const ButtonPerW(
      {super.key,
      required this.incrementarb,
      required this.disminuirb,
      required this.resetb});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          height: 50,
          minWidth: 50,
          elevation: 1,
          color: const Color.fromARGB(255, 255, 238, 154),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const Icon(
            Icons.remove_circle_outline,
            color: Colors.black,
          ),
          onPressed: () => disminuirb(),
        ),
        MaterialButton(
          height: 50,
          minWidth: 50,
          elevation: 1,
          color: const Color.fromARGB(255, 255, 198, 243),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const Icon(
            Icons.restore,
            color: Colors.black,
          ),
          onPressed: () => resetb(),
        ),
        MaterialButton(
          height: 50,
          minWidth: 50,
          elevation: 1,
          color: const Color.fromARGB(255, 208, 255, 167),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
