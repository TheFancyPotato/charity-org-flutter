import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({super.key, required this.mobile, this.tablet, required this.desktop})
      : super();

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 500;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static double widthOfScreen(
          {required BuildContext context, double width = 1}) =>
      width * MediaQuery.of(context).size.width;

  static double setWidth(
      BuildContext context, double mobile, double tablet, double desktop) {
    if (isMobile(context)) {
      return mobile;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return desktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraints) {
        if (boxConstraints.maxWidth >= 1200) {
          return desktop;
        } else if (boxConstraints.maxWidth >= 500) {
          return tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
