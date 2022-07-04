import '../../const/my_colors.dart';
import '../../const/my_paddings.dart';
import '../../const/my_text.dart';
import '../../widgets/gradient_line.dart';
import '../../widgets/images/logo.dart';
import '../../widgets/master/banner.dart';
import '../../widgets/texts/bodytext2.dart';
import '../../widgets/texts/info.dart';
import '../../widgets/texts/title2.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navbar,
      body: MyPaddings.pagePadding(
        child: SingleChildScrollView(
          child: MyPaddings.pagePadding(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.scale(
                  scale: 0.85,
                  child: const BannerField(),
                ),
                contentHeader(),
                titleField()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row contentHeader() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [contentTitle(), publisher()],
      );

  Row contentTitle() => Row(
        children: [
          GradientLine(),
          MyPaddings.menuItemPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoText(
                  "01.05.2022",
                  isMini: true,
                ),
                Row(
                  children: [
                    Title2(MyText.contentTitle2),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Row publisher() => Row(
        children: [
          Logo(isMini: true),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InfoText(MyText.publisherName, isMini: true),
          ),
        ],
      );

  Container titleField() => Container(
        color: MyColors.secondary,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: BodyText2(MyText.loremIpsum),
        ),
      );
}
