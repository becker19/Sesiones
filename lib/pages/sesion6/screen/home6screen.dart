import 'package:ejercicio/pages/sesion6/widgets/buttonperw.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home6Screen extends StatefulWidget {
  const Home6Screen({super.key});

  @override
  State<Home6Screen> createState() => _Home6ScreenState();
}

class _Home6ScreenState extends State<Home6Screen> {
  int numero = 0;

  void aumentar() {
    setState(() {
      numero++;
    });
  }

  void disminuir() {
    setState(() {
      numero--;
    });
  }

  void resetear() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 240, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 165, 240, 255),
        title: Text(
          'Sesion 6',
          style: GoogleFonts.dancingScript(fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2020/10/25/16/55/naruto-5684870_960_720.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mi nombres es: ',
                      style: GoogleFonts.syneMono(fontSize: 24),
                    ),
                    Text(
                      'Naruto',
                      style: GoogleFonts.syneMono(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Apellido: ',
                      style: GoogleFonts.syneMono(fontSize: 24),
                    ),
                    Text(
                      'Uzumaki',
                      style: GoogleFonts.syneMono(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  'Contador',
                  style: GoogleFonts.lobster(fontSize: 48),
                ),
                Text(
                  '$numero',
                  style: GoogleFonts.syneMono(fontSize: 70),
                ),
                ButtonPerW(
                  incrementarb: () => aumentar(),
                  disminuirb: () => disminuir(),
                  resetb: () => resetear(),
                )
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: CustomButtonW(
      //   incrementarb: () => aumentar(),
      //   disminuirb: () => disminuir(),
      //   resetb: () => resetear(),
      // ),
    );
  }
}
