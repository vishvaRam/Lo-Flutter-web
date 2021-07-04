import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/Navigation.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';
import 'package:lowebsite/Widgets/Section.dart';
import 'package:lowebsite/Widgets/SmallWidgets.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Section(
      child: Container(
        margin: EdgeInsets.all(ResponsiveLayoutBuilder.isSmallScreen(context)? 15 :25),
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/herobg.jpg"),
            fit: BoxFit.cover,
            alignment: ResponsiveLayoutBuilder.isSmallScreen(context)? AlignmentDirectional.bottomEnd: AlignmentDirectional.center
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Navigation(),
              top: 0,
              left: 0,
              right: 0,
            ),
            Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                            child: SelectableText(
                          "LOMBOK",
                          style: textStyler(
                              fontSize:
                                  ResponsiveLayoutBuilder.isSmallScreen(context)
                                      ? 34
                                      : 130,
                              color: kFontColor,
                              fontWeight: FontWeight.w700,
                              letterSpacing:ResponsiveLayoutBuilder.isSmallScreen(context)? 4: 8),
                        )),
                      ),
                      FittedBox(
                          child: SelectableText(
                        "HOLISTIC HEALTH",
                        style: textStyler(
                            fontSize:
                                ResponsiveLayoutBuilder.isSmallScreen(context)
                                    ? 16
                                    : 34,
                            color: kFontColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2),
                      )),
                      SizedBox(
                        height: ResponsiveLayoutBuilder.isSmallScreen(context)
                            ? 20
                            : size.height * 0.05,
                      ),
                      Container(
                        height: 5,
                        width: ResponsiveLayoutBuilder.isSmallScreen(context)
                            ? 60
                            : 90,
                        color: kFontColor,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
