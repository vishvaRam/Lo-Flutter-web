import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/MaxWidth.dart';
import 'package:lowebsite/Widgets/NavItems.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: kBgColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.3,
      child: MaxWidth(
        child: ResponsiveLayoutBuilder.isSmallScreen(context)
            ? Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      navText(context),
                      SizedBox(
                        height: 20,
                      ),
                      buildIcons(size)
                    ],
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [buildIcons(size), navText(context)],
              ),
      ),
    );
  }

  Widget navText(BuildContext context) {
    return ResponsiveLayoutBuilder.isSmallScreen(context)
        ? Column(
            children: [
              NavItems(name: "ABOUT"),
              NavItems(name: "ARTICLES"),
              NavItems(name: "SUBSCRIBE"),
            ],
          )
        : Row(
            children: [
              NavItems(name: "ABOUT"),
              NavItems(name: "ARTICLES"),
              NavItems(name: "SUBSCRIBE"),
            ],
          );
  }

  Row buildIcons(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FIcon(
          iconData: FontAwesomeIcons.facebook,
          size: 28,
        ),
        SizedBox(
          width: size.width * 0.023,
        ),
        FIcon(
          iconData: FontAwesomeIcons.instagram,
          size: 28,
        ),
        SizedBox(
          width: size.width * 0.023,
        ),
        FIcon(
          iconData: FontAwesomeIcons.linkedinIn,
          size: 28,
        ),
        SizedBox(
          width: size.width * 0.023,
        ),
        FIcon(
          iconData: FontAwesomeIcons.twitter,
          size: 28,
        ),
      ],
    );
  }
}

class FIcon extends StatelessWidget {
  final IconData iconData;
  final double size;

  const FIcon({
    Key? key,
    required this.iconData,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FaIcon(
        iconData,
        size: 28,
        color: kFontColor,
      ),
    );
  }
}
