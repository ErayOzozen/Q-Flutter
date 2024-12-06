import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/loading_screen.dart';
import 'package:go_router/go_router.dart';
// Loading ekranını ekle
   // Home ekranını ekle

final GoRouter router = GoRouter(
  initialLocation: '/loading',  // Başlangıç ekranı
  routes: [
    // LoadingScreen yönlendirmesi
    GoRoute(
      path: '/loading',
      builder: (BuildContext context, GoRouterState state) {
        return const LoadingScreen();
      },
    ),
    // HomeScreen yönlendirmesi
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);



