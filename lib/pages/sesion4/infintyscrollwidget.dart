import 'package:flutter/material.dart';

class ScrollwidgetPage extends StatefulWidget {
  const ScrollwidgetPage({super.key});

  @override
  State<ScrollwidgetPage> createState() => _ScrollwidgetPageState();
}

class _ScrollwidgetPageState extends State<ScrollwidgetPage> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);

    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Infinty'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: Colors.amber,
                onRefresh: onRefresh,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: imagesIds.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/giphy.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                    );
                  },
                ),
              ),
              if (isLoading)
                Positioned(
                    bottom: 40,
                    left: size.width * 0.5 - 30,
                    child: const LodingIcono())
            ],
          ),
        ),
      ),
    );
  }
}

class LodingIcono extends StatelessWidget {
  const LodingIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: Colors.amber,
      ),
    );
  }
}
