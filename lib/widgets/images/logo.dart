import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.isMini = false}) : super(key: key);
  final bool isMini;

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/logo.png",
        height: isMini ? 32 : 140, width: isMini ? 32 : 140);
  }
}
