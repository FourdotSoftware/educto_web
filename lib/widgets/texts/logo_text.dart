import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/my_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText(this.data,
      {Key? key, this.isLight = true, this.isBold = false})
      : super(key: key);
  final String data;
  final bool isLight;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: GoogleFonts.ptSans(
        //TODO: this font will change
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: 49,
        fontWeight: isBold ? FontWeight.w700 : FontWeight.w300,
      ),
    );
  }
}
