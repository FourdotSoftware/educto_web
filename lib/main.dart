import 'pages/content_page/content_page.dart';
import 'pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EductoWeb());

class EductoWeb extends StatelessWidget {
  const EductoWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Educto Web',
      home: HomePage(),
    );
  }
}
