import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';


class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveLayoutBuilder(
      {Key? key,required this.mobile, this.tablet,required this.desktop})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < kTabletBreakPoint;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= kTabletBreakPoint &&
        MediaQuery.of(context).size.width <= kDesktopBreakPoint;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrains){
        print(constrains.maxWidth);
        if(constrains.maxWidth < kTabletBreakPoint){
          print("Mobile View");
          return mobile;
        } else if (constrains.maxWidth >= kTabletBreakPoint && constrains.maxWidth < kDesktopBreakPoint){
          print("Tab View");
          return tablet ?? desktop;
        }else {
          print("DeskTop View");
          return desktop;
        }
      },
    );
  }
}