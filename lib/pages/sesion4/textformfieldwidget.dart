import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('TextFormField'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
              onSaved: (String? value) {},
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            TextFormField(
              maxLength: 9,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingresar tu numero de cel',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(5),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 156, 255, 149),
                hintStyle: const TextStyle(color: Colors.red),
                suffixIcon: const Icon(Icons.check, color: Colors.cyan),
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
