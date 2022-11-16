import 'package:ejercicio/pages/sesion7/widgets/platillawidget.dart';
import 'package:flutter/material.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTiktokPage extends StatefulWidget {
  const ScrollTiktokPage({super.key});

  @override
  State<ScrollTiktokPage> createState() => _ScrollTiktokPageState();
}

class _ScrollTiktokPageState extends State<ScrollTiktokPage> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2017/02/25/07/47/china-2097075_960_720.jpg',
      'title': 'LA GRAN MURALLA (CHINA)',
      'subtitle': 'Parte de la Gran Muralla China.EL MUNDO',
      'content':
          'Es algo más que una muralla para un país como China. Representa también su cultura y filosofía de vida hoy en día. Sirvió para defenderse de los mongoles y llegó a tener más de 20.000 kilómetros desde Corea al desierto de Gobi. Las primeras construcciones de la Gran Muralla China datan del siglo VII a.C. entre los que destaca el muro construido entre 220 y 206 a.C. por el primer emperador de China, Qin Shi Huang.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/03/26/22/15/petra-4971956_960_720.jpg',
      'title': 'PETRA (JORDANIA)',
      'subtitle': 'La fachada principal de Petra (Jordania)EM',
      'content':
          'Punto clave de paso de la Ruta de la Seda, se levantó en el reino Nabateao. Tras su abandono fue descubierta en 1812 por explorador suizo Johann Ludwig Burckhardt. Se compone de 1.500 metros de longitud con fecha del año 312 a.C. Petra fue nombrada por la revista Smithsonian como uno de los "28 lugares para ver antes de morir".'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/07/20/14/02/rome-3550739_960_720.jpg',
      'title': 'EL COLISEO (ITALIA)',
      'subtitle': 'El Coliseo de Roma (Italia)EM',
      'content':
          'Con capacidad para 65.000 espectadores, acogió luchas de gladiadores durante 500 años y se convirtió en el circo más grande entre todos los construidos en aquella época (año 72 d.C.). Ha sufrido importantes daños por terremotos y expolios, pero mantiene todo su esplendor como símbolo icónico de la Roma imperial. Es una de las atracciones turísticas más populares de Roma y también tiene vínculos con la Iglesia Católica Romana. Cada Viernes Santo el Papa encabeza una procesión del Vía Crucis por el Coliseo.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2015/11/08/01/01/mexico-1032966_960_720.jpg',
      'title': 'CHICHEN ITZA (MÉXICO)',
      'subtitle': 'El Chichen Itza en México',
      'content':
          'El Templo de Kukulcán es una pirámide escalonada mesoamericana que domina el centro del sitio arqueológico de Chichén Itzá en el estado mexicano de Yucatán. El edificio está designado más formalmente por los arqueólogos como Estructura 5B18 de Chichén Itzá. La pirámide tiene 91 escalones en cada uno de sus lados. Sumando todos ellos más el escalón final son 365 escalones, tantos como días tiene un año.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2016/01/13/17/48/machupicchu-1138641_960_720.jpg',
      'title': 'MACHU PICCHU (PERÚ)',
      'subtitle': 'El Machu Picchu en Perú.EM',
      'content':
          'El Machu Picchu fue construido como propiedad del emperador inca Pachacuti (1438-1472). A menudo denominada erróneamente como la "Ciudad Perdida de los Incas" y es todo un icono familiar de la civilización Inca. Fue declarado Santuario Histórico del Perú en 1981 y Patrimonio de la Humanidad por la UNESCO en 1983.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2020/01/31/21/25/brazil-4809011_960_720.jpg',
      'title': 'EL CRISTO REDENTOR (BRASIL)',
      'subtitle': 'El Cristo Redentor en Brasil.EM',
      'content':
          'Entre 1922 y 1931 se creó esta estatua art deco de Jesucristo en Río de Janeiro por el escultor polaco-francés Paul Landowski y los ingenieros Heitor da Silva Costa y Albert Caquo. La estatua pesa 635 toneladas y está ubicada en la cima de la montaña Corcovado en el Parque Nacional del Bosque de Tijuca. Símbolo del cristianismo en todo el mundo, la estatua también se ha convertido en un icono cultural tanto de Río de Janeiro como de Brasil.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2018/09/04/16/48/taj-mahal-3654227_960_720.jpg',
      'title': 'TAJ MAHAL (INDIA)',
      'subtitle': 'subtitle TAJ MAHAL',
      'content':
          'El Taj Mahal es un mausoleo de mármol blanco marfil en la orilla sur del río Yamuna en la ciudad de Agra (India). Fue encargado en 1632 por el emperador Shah Jahan para albergar la tumba de su esposa favorita, Mumtaz Mahal. La tumba es la pieza central de un complejo que incluye una mezquita y una casa de huéspedes. Su valor de construcción trasladado a hoy en día serían un 750 millones de euros.'
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 7'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (BuildContext context, int index) {
            final sitios = data[index];

            return PlantillaWidget(
              img: sitios['img'],
              title: sitios['title'],
              subtitle: sitios['subtitle'],
              content: sitios['content'],
            );
          }),
    );
  }
}
