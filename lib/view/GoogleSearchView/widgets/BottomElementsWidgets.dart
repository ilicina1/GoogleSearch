import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/style/Styles.dart';

class BottomElementsWidgets {
  var context;

  BottomElementsWidgets(this.context);

  Widget bottomElements(_googleSignIn) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextButton(
            onPressed: () {},
            child: Text('Done by'),
            style: Styles.blueButton,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: Text(
              _googleSignIn.currentUser!.displayName.toString(),
              style: Styles.doneByStyle,
            ),
          ),
        )
      ],
    );
  }
}
