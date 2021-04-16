import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/GoogleSearchWidgets.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/MainWidgets.dart';

class UpperElementsWidgets {
  var context;

  UpperElementsWidgets(this.context);

  Widget upperElements(textFieldValueHolder) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        children: <Widget>[
          GoogleSearchWidgets(context).appBar(),
          MainWidgets(context).mainWidgets(textFieldValueHolder),
        ],
      ),
    );
  }
}
