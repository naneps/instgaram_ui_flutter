import 'package:flutter/material.dart';
import 'package:instgaram_ui_flutter/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? webScreenLayout;
  final Widget? mobileScreenLayout;
  const ResponsiveLayout(
      {required this.webScreenLayout,
      required this.mobileScreenLayout,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenLayout!;
        }
        return mobileScreenLayout!;
      },
    );
  }
}
