import 'package:flutter/material.dart';

class Dropdownbuttonformfiel extends StatefulWidget {
  const Dropdownbuttonformfiel({super.key});

  @override
  State<Dropdownbuttonformfiel> createState() => _DropdownbuttonformfielState();
}

class _DropdownbuttonformfielState extends State<Dropdownbuttonformfiel> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Sesion1';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dropdownbuttonformfiel'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amberAccent, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amberAccent, width: 2),
              ),
              filled: true,
              fillColor: Colors.greenAccent,
            ),
            dropdownColor: Colors.greenAccent,
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['Sesion1', 'Sesion2', 'Sesion3', 'Sesion4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 18),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
