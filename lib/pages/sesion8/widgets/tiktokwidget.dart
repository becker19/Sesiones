import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '$username',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Icon(Icons.verified, color: Colors.lightBlue)
                    ],
                  ),
                  const Text('#Hola #Mundo #Flutter')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/07/10/11/28/bulldog-2489829_960_720.jpg'),
                  ),
                  Column(
                    children: const [Icon(Icons.favorite), Text('42')],
                  ),
                  Column(
                    children: const [Icon(Icons.comment), Text('42')],
                  ),
                  Column(
                    children: const [Icon(Icons.bookmark), Text('42')],
                  ),
                  Column(
                    children: const [Icon(Icons.share), Text('42')],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
