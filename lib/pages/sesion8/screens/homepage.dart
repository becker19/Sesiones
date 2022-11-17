import 'package:ejercicio/pages/sesion8/widgets/tiktokwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2015/02/06/21/51/living-room-626588_960_720.jpg',
        'username': 'Prueba 1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2014/05/17/15/54/river-346311_960_720.jpg',
        'username': 'Prueba 2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2014/10/14/18/58/candlelight-488568_960_720.jpg',
        'username': 'Prueba 3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/01/19/19/15/sea-4778783_960_720.jpg',
        'username': 'Prueba 4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/06/21/09/54/cranes-5324170_960_720.jpg',
        'username': 'Prueba 5'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];
                return TiktokWidget(
                  img: datos['img'],
                  username: datos['username'],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tv_rounded),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Siguiendo',
                      ),
                      Text(
                        'Para Ti',
                      )
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            )
          ],
        ),
      ),
    );
  }
}
