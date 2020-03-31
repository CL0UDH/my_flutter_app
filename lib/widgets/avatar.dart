import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.network(
            'https://image.flaticon.com/icons/svg/1946/1946369.svg'
          ),
          Positioned(
            child: CircleContainer(
              child: Icon(Icons.edit, color: Colors.blue,),
              size: 60,
            ),
            right: 0,
          ),
        ],
      ),
    );
  }
}
