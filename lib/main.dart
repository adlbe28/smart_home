import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/app_router.dart';
import 'package:smart_home/core/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(useMaterial3: true)
          .copyWith(scaffoldBackgroundColor: kPrimrycolor),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
