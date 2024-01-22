import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/image_app.dart';
import 'package:smart_home/features/Home/View/widget/custom_image_home_list.dart';
import 'package:smart_home/features/Home/View/widget/custom_slider_list.dart';

class CustomListHome extends StatefulWidget {
  const CustomListHome({
    super.key,
  });

  @override
  State<CustomListHome> createState() => _CustomListHomeState();
}

class _CustomListHomeState extends State<CustomListHome> {
  PageController pageController = PageController(
    viewportFraction: 0.7,
  );

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .60,
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemBuilder: (context, index) {
                  return ImageHomeList(
                    imagepath: ImageApp.listImage[index]["image"],
                    text: ImageApp.listImage[index]["text"],
                  );
                },
                onPageChanged: (value) {
                  pageNumber = value;
                  setState(() {});
                },
                clipBehavior: Clip.none,
                itemCount: ImageApp.listImage.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomSlider(
                listImageLength: ImageApp.listImage.length,
                pageNumber: pageNumber)
          ],
        ),
      ),
    );
  }
}
