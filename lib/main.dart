import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Task_Provider.dart';
import 'package:untitled/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider<TaskProvider>(
    child: const MyApp(),
    create: (_) => TaskProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
