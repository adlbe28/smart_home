import 'package:flutter/material.dart';

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.amber : Colors.black,
          shape: BoxShape.circle),
    );
  });
}

class CustomSlider extends StatelessWidget {
  const CustomSlider(
      {super.key, required this.listImageLength, required this.pageNumber});
  final int listImageLength;
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: indicators(listImageLength, pageNumber));
  }
}
