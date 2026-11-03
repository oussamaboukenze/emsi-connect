import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/profile_page.dart';
import 'screens/courses_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'EMSI Connect',
      debugShowCheckedModeBanner: false,
      home: CoursesPage(),
    );
  }
}
