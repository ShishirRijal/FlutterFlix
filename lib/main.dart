import 'package:flutter/material.dart';
import 'package:flutterflix/core/core.dart';
import 'package:flutterflix/presentation/shared_widgets/shared_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const BottomNavBar(),
    );
  }
}
