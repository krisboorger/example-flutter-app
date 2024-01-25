import 'package:flutter/material.dart';

import 'image_switcher.dart';

class ImageSwitcherState extends State<ImageSwitcher> {
  bool _isFirstImage = true;

  void switchImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Switcher'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              _isFirstImage ? 'images/image1.jpg' : 'images/image2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: switchImage,
              child: const Text('Switch Image'),
            ),
          ),
        ],
      ),
    );
  }
}
