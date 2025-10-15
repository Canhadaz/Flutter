import 'package:flutter/material.dart';
import 'components/widgets/home.dart';

void main() {
  runApp(const MyApp());
}

// ===================== APP =====================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone do twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 8),
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}
