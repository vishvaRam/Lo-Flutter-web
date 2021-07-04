import 'package:flutter/material.dart';
import 'package:lowebsite/Sections/Footer.dart';
import 'package:lowebsite/Sections/Landing.dart';
import 'package:lowebsite/Sections/LatestArticales.dart';
import 'package:lowebsite/Widgets/NavItems.dart';
import 'Constants/Contants.dart';
import 'Sections/About.dart';
import 'Widgets/SmallWidgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool menu =false;

  void toggleMenu (){
    setState(() {
      menu = !menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lo',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Landing(fun: toggleMenu,),
                    LatestArticles(),
                    About(context: context,),
                    Footer()
                  ],
                ),
                MenuF(menu: menu),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuF extends StatelessWidget {
  const MenuF({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final bool menu;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kToolbarHeight+ 15,
        right: 0,
        left: 0,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          opacity: menu? 1: 0,
          child: Container(
      height: MediaQuery.of(context).size.height-kToolbarHeight,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  child: Text(
                    "ABOUT",
                    style: textStyler(fontSize: 24, color: kFontColor,fontWeight: FontWeight.w600,letterSpacing: 3),
                  ),
                ), 
                SizedBox(height: 25,),
                FittedBox(
                  child: Text(
                    "ARTICLES",
                    style: textStyler(fontSize: 24, color: kFontColor,fontWeight: FontWeight.w600,letterSpacing: 3),
                  ),
                ),
                SizedBox(height: 25,),
                FittedBox( 
                  child: Text(
                    "SUBSCRIBE",
                    style: textStyler(fontSize: 24, color: kFontColor,fontWeight: FontWeight.w600,letterSpacing: 3),
                  ),
                ),
                SizedBox(height: 25,),
              ],
            ),
    ),
        ));
  }
}
