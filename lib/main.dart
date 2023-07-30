import 'package:bbc_news_admin/pages/screens/topStories.dart';
import 'package:bbc_news_admin/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBC NEWS Admin',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashPage(),
      routes: {
        TopStories.id: (context) => const TopStories(),
      },
    );
  }
}
