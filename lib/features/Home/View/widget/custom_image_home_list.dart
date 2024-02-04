import 'package:flutter/material.dart';
import 'package:smart_home/features/Home/View/widget/custom_stack_iamge_room.dart';

class ImageHomeList extends StatelessWidget {
  const ImageHomeList({
    super.key,
    required this.imagepath,
    required this.text,
  });
  final String imagepath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.easeOutSine,
          child: CustomStackImageRoom(imagepath: imagepath, text: text)),
    );
  }
}
