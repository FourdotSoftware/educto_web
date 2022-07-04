import '../../const/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Title2 extends StatelessWidget {
  const Title2(this.data, {Key? key, this.isBold = true, this.isLight = true})
      : super(key: key);
  final String data;
  final bool isBold;
  final bool isLight;

  @override
  Widget build(BuildContext context) => Text(data, style: title2Style());

  TextStyle title2Style() => GoogleFonts.ptSans(
      color: isLight ? Colors.white : MyColors.tertiary,
      fontSize: 40,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w400);
}
