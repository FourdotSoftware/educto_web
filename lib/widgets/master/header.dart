import 'package:flutter/material.dart';

import '../../const/my_paddings.dart';
import '../../const/my_text.dart';
import '../images/logo.dart';
import '../texts/bodytext2.dart';
import '../texts/logo_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [logoField(), menuField()]);
  }

  Row logoField() => Row(children: [const Logo(), LogoText(MyText.logoText)]);

  Row menuField() => Row(children: [
        menuItem(MyText.aboutUs),
        menuItem(MyText.mostRead),
        menuItem(MyText.writers),
        menuItem(MyText.contact),
        searchButton()
      ]);

  Padding menuItem(String data) =>
      MyPaddings.menuItemPadding(child: BodyText2(data));

  Padding searchButton() => MyPaddings.menuItemPadding(
      child: const Icon(Icons.search, color: Colors.white));
}
