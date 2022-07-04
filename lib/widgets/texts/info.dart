import '../../const/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoText extends StatelessWidget {
  const InfoText(this.data,
      {Key? key, this.isLight = false, this.isMini = false})
      : super(key: key);
  final String data;
  final bool isLight;
  final bool isMini;

  @override
  Widget build(BuildContext context) {
    return Text(data, style: infoStyle());
  }

  TextStyle infoStyle() {
    return GoogleFonts.ptSans(
        color: isLight ? Colors.white : MyColors.tertiary,
        fontSize: isMini ? 20 : 30,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic);
  }
}
