import 'package:flutter/material.dart';
import 'package:lowebsite/Constants/Contants.dart';
import 'package:lowebsite/Widgets/SmallWidgets.dart';

class NavItems extends StatefulWidget {
  final String name;
  const NavItems({Key? key, required this.name}) : super(key: key);
  @override
  _NavItemsState createState() => _NavItemsState();
}

class _NavItemsState extends State<NavItems> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              onEnter: (v){
                setState(() {
                  isHover = true;
                });
                print(isHover);
              },
              onExit: (v){
                setState(() {
                  isHover = false;
                });
                print(isHover);

              },
              child: Text(
                widget.name,
                style: textStyler(fontSize: 18, color: kFontColor,fontWeight: FontWeight.w600,letterSpacing: 3),
              ),
            ),
            AnimatedContainer(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 400),
              height: 5,
              width: isHover ? 50 : 0,
              color: kFontColor,
            )
          ],
        ),
      ),
    );
  }
}
