import 'package:flutter/material.dart';

class MyPaddings {
  static Padding menuItemPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(20.0), child: child);

  static Padding textPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.all(10.0), child: child);

  static Padding pagePadding({Widget? child}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 80),
      child: child);
  static Padding bigPadding({Widget? child}) =>
      Padding(padding: const EdgeInsets.symmetric(vertical: 40), child: child);
}
