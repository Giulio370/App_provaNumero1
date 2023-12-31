import 'package:app_prova_numero1/theme/dark_mode.dart';
import 'package:app_prova_numero1/theme/light_mode.dart';
import 'package:flutter/material.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightmode,
      darkTheme: darkmode,
    );
  }
}
