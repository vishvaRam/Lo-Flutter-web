import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/MaxWidth.dart';
import 'package:lowebsite/Widgets/NavItems.dart';
import 'SmallWidgets.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ResponsiveLayoutBuilder(
        mobile: Container(
          height: kToolbarHeight,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text("LO",
                        style: textStyler(
                            fontSize: 22,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w900,
                            color: kFontColor))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: kFontColor,size: 28,)),
              )
            ],
          ),
        ),
        desktop: Container(
          height: size.height * 0.15,
          width: size.width,
          child: MaxWidth(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("LO",
                          style: textStyler(
                              fontSize: 28,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w900,
                              color: kFontColor))),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NavItems(name: "ABOUT"),
                    NavItems(name: "ARTICLES"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: kFontColor,
                              padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 15),
                              side: BorderSide(color: kFontColor, width: 2)
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "SUBSCRIBE",
                              style: textStyler(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 4,
                                  color: kFontColor,
                                  fontSize: 18),
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
