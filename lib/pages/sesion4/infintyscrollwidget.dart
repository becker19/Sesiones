import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Infinityscrollwidget extends StatefulWidget {
  const Infinityscrollwidget({super.key});

  @override
  State<Infinityscrollwidget> createState() => _InfinityscrollwidgetState();
}

class _InfinityscrollwidgetState extends State<Infinityscrollwidget> {
  late ScrollController _scrollController;
  final List _images = [];

  final int _maxLength = 20;

  bool isLoading = false;
  bool hasMore = true;

  _getImages() async {
    setState(() {
      isLoading = true;
    });
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    List data = jsonDecode(response.body);

    // print(data);
    for (final e in data) {
      final imageurl = e['thumbnailUrl'];

      _images.add(imageurl);
    }

    setState(() {
      isLoading = false;

      hasMore = _images.length < _maxLength;
    });
  }

  @override
  void initState() {
    super.initState();
    _getImages();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent * 0.95 &&
          !isLoading) {
        if (hasMore) {
          _getImages();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('InfinityScroll'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.separated(
          controller: _scrollController,
          itemCount: _images.length + (hasMore ? 1 : 0),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemBuilder: (context, index) {
            if (index == _images.length) {
              return const SizedBox(
                child: FittedBox(child: CircularProgressIndicator()),
              );
            }
            return Image.network(
              _images[index],
              height: 200,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
