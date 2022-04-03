import 'package:flutter/material.dart';
import 'package:instgaram_ui_flutter/utils/dimensions.dart';

class ResponsiveLatout extends StatelessWidget {
  final Widget? webScreenLayout;
  final Widget? mobileScreenLayout;
  const ResponsiveLatout(
      {this.webScreenLayout, this.mobileScreenLayout, Key? key})
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
