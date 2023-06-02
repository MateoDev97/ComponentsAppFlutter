import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({super.key});

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final scrollController = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      final nearEndPixels = scrollController.position.pixels + 500;
      if (nearEndPixels >= scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  void addFiveElements() {
    final lastId = imageIds.last;

    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addFiveElements();

    isLoading = false;
    setState(() {});

    final nearEndPixels = scrollController.position.pixels + 100;
    if (nearEndPixels <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 150,
      duration: const Duration(microseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future<void> pullToRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    final lastId = imageIds.last;

    imageIds.clear();

    imageIds.add(lastId + 1);

    addFiveElements();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: pullToRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imageIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imageIds[index]}'),
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                  );
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 50,
                left: MediaQuery.of(context).size.width * 0.5 - 30,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle),
                  child: const CircularProgressIndicator(
                    color: AppTheme.primaryColor,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
