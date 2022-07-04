import 'package:flutter/material.dart';

import '../../const/my_paddings.dart';
import '../../const/my_text.dart';
import '../texts/bodytext2.dart';
import '../texts/title2.dart';

class BannerField extends StatelessWidget {
  const BannerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          bannerPhoto(),
          Expanded(child: MyPaddings.menuItemPadding(child: bannerText()))
        ]);
  }

  Stack bannerPhoto() => Stack(alignment: Alignment.center, children: [
        Row(mainAxisSize: MainAxisSize.min, children: [appSs(), appSs()]),
        appSs(isback: false)
      ]);

  Column bannerText() =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Title2(MyText.eductoTitle),
        MyPaddings.textPadding(),
        BodyText2(MyText.desc),
        MyPaddings.textPadding(),
        Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/appstore.jpeg",
                  height: 61, width: 182)),
          MyPaddings.textPadding(),
          Image.asset("assets/images/googleplay.png", height: 61, width: 206)
        ])
      ]);

  Opacity appSs({bool isback = true}) => Opacity(
      opacity: isback ? 0.3 : 1,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(65),
          child: Image.asset("assets/images/homescreen.png",
              height: isback ? 478 : 532, width: isback ? 256 : 285)));
}
