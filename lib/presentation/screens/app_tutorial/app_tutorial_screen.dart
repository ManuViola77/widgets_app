import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Laborum officia ullamco cupidatat esse nisi esse cupidatat nulla adipisicing pariatur sit pariatur excepteur.',
    '/assets/images/slide-1.png',
  ),
  SlideInfo(
    'Entrega Rapida',
    'Do culpa elit laboris amet deserunt sint in culpa aliquip Lorem.',
    '/assets/images/slide-2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'Culpa tempor eiusmod ex nisi adipisicing voluptate id proident sunt quis sit irure.',
    '/assets/images/slide-3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children:
            slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
