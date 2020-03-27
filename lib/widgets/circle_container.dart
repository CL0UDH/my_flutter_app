import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {

  final Widget child;
  final double width, height;

  CircleContainer(
    { @required this.child, @required this.width, @required this.height }
  ) 
  : 
  assert(child != null),
  assert(width != null && width >= 50),
  assert(height != null && width >= 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: this.child,
      ),
      decoration: BoxDecoration(
        color: Color(0xfff0f0f0),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(5, 5))
        ],
      ),
    );
  }
}
