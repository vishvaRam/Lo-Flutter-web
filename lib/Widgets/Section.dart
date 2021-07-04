import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final double extendHeight;
  final Widget child;
  const Section({Key? key, required this.child, this.extendHeight= 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*extendHeight,
      width: size.width,
      child: child,
    );
  }
}
