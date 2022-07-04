import 'package:flutter/material.dart';

import '../../const/my_colors.dart';
import '../../const/my_paddings.dart';
import '../../const/my_text.dart';
import '../../widgets/master/banner.dart';
import '../../widgets/master/header.dart';
import '../../widgets/texts/bodytext2.dart';
import '../../widgets/texts/title2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.navbar,
      body: MyPaddings.pagePadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              MyPaddings.pagePadding(child: const BannerField()),
              MyPaddings.bigPadding(),
              Title2(MyText.mostRead),
              MyPaddings.textPadding(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  5,
                  (index) => contentField(),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget contentField() => MyPaddings.textPadding(
        child: Column(
          children: [
            contentPhoto(),
            BodyText2(MyText.contentTitle,
                isBold: true, isLight: true, textAlign: TextAlign.center)
          ],
        ),
      );

  Stack contentPhoto() => Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/photo1.jpg",
                  fit: BoxFit.cover, height: 211, width: 211)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [MyColors.blackGradientEnd, Colors.black])),
            height: 211,
            width: 211,
          )
        ],
      );
}
