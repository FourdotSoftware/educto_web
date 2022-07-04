import '../const/my_colors.dart';
import 'package:flutter/material.dart';

class GradientLine extends StatelessWidget {
  const GradientLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 79,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [MyColors.primary, MyColors.gradientEnd])),
    );
  }
}
