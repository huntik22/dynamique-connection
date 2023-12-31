// import 'package:dynamique_connexion/views/login_page.dart';
import 'package:dynamique_connexion/views/social_page.dart';
import 'package:flutter/material.dart';

import 'constant/colors.dart';
// import 'views/welcome_page.dart';

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
      title: 'Yoga App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: d_red),
        useMaterial3: false,
      ),
      home:const SocialPage() ,
    );
  }
}


