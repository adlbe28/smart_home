import 'package:go_router/go_router.dart';
import 'package:smart_home/features/Home/View/home_page.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    )
  ]);
}
