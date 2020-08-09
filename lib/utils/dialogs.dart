import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  static Future<void> alert(
    BuildContext context, {
    String title,
    String body,
    String okText = "Aceptar",
  }) async {
    Completer<void> c = Completer();
    showCupertinoDialog(
      context: context,
      builder: (_) {
        return CupertinoAlertDialog(
          title: title != null ? Text(title) : null,
          content: body != null ? Text(body) : null,
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(okText),
              onPressed: () {
                Navigator.pop(context);
                c.complete();
              },
            ),
          ],
        );
      },
    );
    return c.future;
  }

  static Future<bool> confirm(
    BuildContext context, {
    String title,
    String body,
    String confirmText = "Aceptar",
    String cancelText = "Cancelar",
  }) async {
    final Completer<bool> c = Completer();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: title != null ? Text(title) : null,
          content: body != null ? Text(body) : null,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                c.complete(true);
              },
              child: Text(
                confirmText,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                c.complete(false);
              },
              child: Text(
                cancelText,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        );
      },
    );

    return c.future;
  }
}
