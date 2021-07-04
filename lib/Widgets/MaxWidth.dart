import 'package:flutter/material.dart';

class MaxWidth extends StatefulWidget {
  final Widget child;
  const MaxWidth({Key? key, required this.child}) : super(key: key);
  @override
  _MaxWidthState createState() => _MaxWidthState();
}

class _MaxWidthState extends State<MaxWidth> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1180.0),
          child: widget.child,
        ));
  }
}