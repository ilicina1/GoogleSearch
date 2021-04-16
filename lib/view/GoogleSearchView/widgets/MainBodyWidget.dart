import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/BottomElementsWidgets.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/UpperElementsWidgets.dart';

class MainBodyWidget {
  var context;

  MainBodyWidget(this.context);

  Widget mainBodyWidget(textFieldValueHolder, _googleSignIn) {
    return Column(
      children: <Widget>[
        UpperElementsWidgets(context).upperElements(textFieldValueHolder),
        Spacer(),
        BottomElementsWidgets(context).bottomElements(_googleSignIn),
      ],
    );
  }
}
