import 'package:flutter/material.dart';

class Listviewidget extends StatelessWidget {
  const Listviewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('ListView'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: const [
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
            FadeInImage(
              placeholder: AssetImage('assets/giphy.gif'),
              image: NetworkImage('https://picsum.photos/id/20/200/300.jpg'),
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
