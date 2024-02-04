import 'dart:ui';

import 'package:flutter/material.dart';

class CustomStackImageRoom extends StatelessWidget {
  const CustomStackImageRoom({
    super.key,
    required this.imagepath,
    required this.text,
  });

  final String imagepath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AspectRatio(
              aspectRatio: MediaQuery.of(context).size.height * .000695,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagepath),
                    fit: BoxFit.fill,
                    colorFilter: const ColorFilter.mode(
                        Colors.black38, BlendMode.colorBurn),
                  ),
                ),
              )),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Frank_Ruhl_Libre",
              fontSize: MediaQuery.of(context).size.height * .075,
            ),
          ),
        ),
      ],
    );
  }
}
