import 'package:flutter/material.dart';

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AspectRatio(
                aspectRatio: MediaQuery.of(context).size.height * .000595,
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
        ),
      ),
    );
  }
}
