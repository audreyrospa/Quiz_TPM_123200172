import 'package:flutter/material.dart';
import 'package:quiz_123200172/halaman_utama.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HalamanUtama(),
    );
  }
}

