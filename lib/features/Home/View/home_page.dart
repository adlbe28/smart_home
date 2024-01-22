import 'package:flutter/material.dart';

import 'package:smart_home/features/Home/View/widget/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomePageBody()),
    );
  }
}
