import 'package:apex_store/screens/main_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  static GoRouter routers = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const MainScreen();
        },
      )
    ],
  );
}
