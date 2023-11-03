import 'package:go_router/go_router.dart';
import 'package:tarea1/presentation/screens/home/home_screen.dart';
import 'package:tarea1/presentation/screens/login/login_screen.dart';


final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      builder: ((context, state) => const LoginScreen())
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: ((context, state) => const HomeScreen())
    ),
  ],
);