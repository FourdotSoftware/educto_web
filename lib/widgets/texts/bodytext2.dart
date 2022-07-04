import '../../const/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText2 extends StatelessWidget {
  const BodyText2(this.data,
      {Key? key, this.isBold = false, this.isLight = false, this.textAlign})
      : super(key: key);
  final String data;
  final bool isBold;
  final bool isLight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
        data,
        style: bodyText2(),
        textAlign: textAlign,
      );

  TextStyle bodyText2() => GoogleFonts.ptSans(
      color: isLight ? Colors.white : MyColors.tertiary,
      fontSize: 25,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w400);
}
