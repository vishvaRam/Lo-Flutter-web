import 'package:flutter/material.dart';
import 'package:lowebsite/Sections/Footer.dart';
import 'package:lowebsite/Sections/Landing.dart';
import 'package:lowebsite/Sections/LatestArticales.dart';
import 'Sections/About.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                    Landing(),
                    LatestArticles(),
                    About(context: context,),
                    Footer()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
