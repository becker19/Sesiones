import 'package:flutter/material.dart';
import 'package:ejercicio/widgets.dart';
import 'package:ejercicio/pages/sesion4/textformfieldwidget.dart';
import 'package:ejercicio/pages/sesion4/emailpass.dart';
import 'package:ejercicio/pages/sesion4/dropdownbutton.dart';
import 'package:ejercicio/pages/sesion4/sliderwidget.dart';
import 'package:ejercicio/pages/sesion4/checkboxswitchwidget.dart';
import 'package:ejercicio/pages/sesion4/listviewwidget.dart';
import 'package:ejercicio/pages/sesion4/infintyscrollwidget.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Texfield',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextFormFieldWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailPassWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'DrowDownButton',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dropdownbuttonformfiel()),
                );
              },
            ),
            ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'CheckBox & Switches',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheboxSwitchWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'ListView',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Listviewidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Infinity Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Infinityscrollwidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
