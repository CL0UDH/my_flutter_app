import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'circle_container.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File _file;

  _pickImage() async {
    final File file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          _file == null
              ? SvgPicture.network(
                  'https://image.flaticon.com/icons/svg/1946/1946369.svg')
              : ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.file(
                    _file,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
          Positioned(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 30,
              onPressed: _pickImage,
              child: CircleContainer(
                child: Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                size: 60,
              ),
            ),
            right: 0,
          ),
        ],
      ),
    );
  }
}
