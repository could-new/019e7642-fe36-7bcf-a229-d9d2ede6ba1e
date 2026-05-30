import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MindSpaceApp());
}

class MindSpaceApp extends StatelessWidget {
  const MindSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindSpace',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32), // Calming green
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Default but clean
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
      },
    );
  }
}
