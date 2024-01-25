import 'package:flutter/material.dart';

import 'image_switcher.dart';

class ImageSwitcherState extends State<ImageSwitcher> {
  int _currentImageIndex = 0;
  final List<String> _imagePaths = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
  ];

  void switchImage() {
    setState(() {
      if (_currentImageIndex < _imagePaths.length - 1) {
          _currentImageIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              _imagePaths[_currentImageIndex],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: switchImage,
              child: const Text('Next step'),
            ),
          ),
        ],
      ),
    );
  }
}