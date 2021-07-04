import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';
import 'package:lowebsite/Widgets/Section.dart';
import 'package:lowebsite/Widgets/SmallWidgets.dart';

class About extends StatelessWidget {
  final BuildContext context;
   About({Key? key,required this.context}) : super(key: key);
  final String img = "Assets/about.jpg";

  @override
  Widget build(BuildContext context) {
    return Section(
        child: ResponsiveLayoutBuilder.isSmallScreen(context)? Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildAboutImg(), buildAboutText(context)
          ],
        ): Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildAboutImg(), buildAboutText(context)],
    ));
  }

  Expanded buildAboutText(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: ResponsiveLayoutBuilder.isSmallScreen(context)
              ? 15
              : size.height * 0.06,
        ),
        FittedBox(
          child: SelectableText(
            "ABOUT",
            style: textStyler(
                color: kFontColor,
                fontWeight: FontWeight.w700,
                fontSize:
                    ResponsiveLayoutBuilder.isSmallScreen(context) ? 22
                  : 32,letterSpacing: 2),
          ),
        ),
        SizedBox(
          height: ResponsiveLayoutBuilder.isSmallScreen(context)
              ? 8
              : size.height * 0.01,
        ),
        Container(
          height: 5,
          width:ResponsiveLayoutBuilder.isSmallScreen(context) ? 30: 50,
          color: kFontColor,
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(ResponsiveLayoutBuilder.isSmallScreen(context) ? 15: size.width*0.06 ),
            child: SelectableText(
                "Since 1993 we have toamed a blog from the earliest years Lorem ipsum dolor sit amet, consectetur adipiscing elit Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nis ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat",
              style: textStyler(lineHeight: 1.8,fontSize: ResponsiveLayoutBuilder.isSmallScreen(context) ? 16:22,color: kFontColor),
              textAlign: ResponsiveLayoutBuilder.isSmallScreen(context) ? TextAlign.center: TextAlign.left,
            ),
          ),
        )
      ],
    ));
  }

  Expanded buildAboutImg() => Expanded(
          child: Image.asset(
        img,
        fit: BoxFit.cover,
      ));
}
