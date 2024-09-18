import 'package:flutter/material.dart';
import 'package:fluttergorouter/app_route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey)
      ),
      routerConfig: AppRouteConfig().router,
    );
  }
}

