import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/MaxWidth.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';
import 'package:lowebsite/Widgets/Section.dart';
import 'package:lowebsite/Widgets/SmallWidgets.dart';

class LatestArticles extends StatelessWidget {
  LatestArticles({Key? key}) : super(key: key);

  final List<String> imageList = [
    "Assets/img1.jpg",
    "Assets/img2.jpg",
    "Assets/img3.jpg"
  ];
  final List<String> titleList = [
    "How to use mindfulness in your every day life",
    "What are the best walking meditation",
    "How to go deep into the mind of hope"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Section(
        extendHeight: ResponsiveLayoutBuilder.isSmallScreen(context) ? 2 : 1,
        child: Container(
          color: kBgColor,
          height: ResponsiveLayoutBuilder.isSmallScreen(context)
              ? size.height * 2
              : size.height,
          child: Column(
            children: [
              SizedBox(
                height: ResponsiveLayoutBuilder.isSmallScreen(context)
                    ? 15
                    : size.height * 0.06,
              ),
              FittedBox(
                child: SelectableText(
                  "LATEST ARTICLES",
                  style: textStyler(
                      fontSize: ResponsiveLayoutBuilder.isSmallScreen(context)
                          ? 16
                          : 32,
                      color: kFontColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: ResponsiveLayoutBuilder.isSmallScreen(context)
                    ? 8
                    : size.height * 0.01,
              ),
              Container(
                height: 5,
                width: ResponsiveLayoutBuilder.isSmallScreen(context) ? 60 : 90,
                color: kFontColor,
              ),
              SizedBox(
                height: ResponsiveLayoutBuilder.isSmallScreen(context) ? 8 : 20,
              ),
              Expanded(
                child: MaxWidth(
                  child: Container(
                    height: ResponsiveLayoutBuilder.isSmallScreen(context)
                        ? size.height * 2
                        : size.height,
                    child: ResponsiveLayoutBuilder.isSmallScreen(context)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 1,
                                child: BuildCart(
                                  imgURL: imageList[0],
                                  title: titleList[0],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: BuildCart(
                                  imgURL: imageList[1],
                                  title: titleList[1],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: BuildCart(
                                  imgURL: imageList[2],
                                  title: titleList[2],
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 2,
                                child: BuildCart(
                                  imgURL: imageList[0],
                                  title: titleList[0],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: BuildCart(
                                  imgURL: imageList[1],
                                  title: titleList[1],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: BuildCart(
                                  imgURL: imageList[2],
                                  title: titleList[2],
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class BuildCart extends StatefulWidget {
  final String imgURL;
  final String title;
  const BuildCart({
    Key? key,
    required this.imgURL,
    required this.title,
  }) : super(key: key);

  @override
  _BuildCartState createState() => _BuildCartState();
}

class _BuildCartState extends State<BuildCart> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (v) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (v) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveLayoutBuilder.isSmallScreen(context)
                ? 20
                : size.width * 0.02,
            vertical: 25),
        height: ResponsiveLayoutBuilder.isSmallScreen(context)
            ? size.height * 0.7
            : size.height * 0.5,
        width: ResponsiveLayoutBuilder.isSmallScreen(context)
            ? size.width * 0.5
            : size.width / 3.7,
        child: AspectRatio(
          aspectRatio:
              ResponsiveLayoutBuilder.isSmallScreen(context) ? 2 / 6 : 1 / 5,
          child: Card(
            elevation: isHover ? 50 : 8,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        child: Image.asset(
                          widget.imgURL,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Center(
                          child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                ResponsiveLayoutBuilder.isSmallScreen(context)
                                    ? 20
                                    : size.width * 0.01),
                        child: SelectableText(
                          widget.title,
                          style: textStyler(
                              fontWeight: FontWeight.w600,
                              color: kFontColor,
                              fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                      )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
