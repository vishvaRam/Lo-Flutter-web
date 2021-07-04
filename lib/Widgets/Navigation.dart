import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/MaxWidth.dart';
import 'package:lowebsite/Widgets/NavItems.dart';
import 'SmallWidgets.dart';
import 'package:lowebsite/Widgets/ResponsiveBuilder.dart';

class Navigation extends StatefulWidget {
  final VoidCallback fun;
  const Navigation({Key? key,required this.fun}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  bool isMenu = false;

  void toggleMenu(){
    setState(() {
      isMenu = !isMenu;
    });
  }

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
                child: IconButton(onPressed: (){
                  toggleMenu();
                  widget.fun();
                }, icon: Icon( isMenu? Icons.close:  Icons.menu,color: kFontColor,size: 28,)),
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
