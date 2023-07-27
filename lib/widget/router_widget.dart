import 'package:flutter/material.dart';

class RouterWidget {
  static pushNewPage(Widget page, BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  static pushNewPageRemoveUntil(Widget page, BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }), (Route route) => false);
  }
}
