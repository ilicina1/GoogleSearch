import 'package:flutter/material.dart';
import 'package:google_pretrazivac/viewModel/GoogleSearchViewModel.dart';
import '../../../utils/shared/size_config.dart';

class GoogleSearchWidgets {
  var context;

  GoogleSearchWidgets(this.context);

  Widget textFieldWidget(textFieldValueHolder) {
    return Container(
      height: 50,
      width: SizeConfig.screenWidth * 0.8,
      child: TextField(
        // textfield za pretrazivac
        controller: textFieldValueHolder,
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: 'Type something'),
      ),
    );
  }

  Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 0.0),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.logout,
              size: 26,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            openGmail(context);
          },
          child: Icon(
            Icons.mail,
            size: 26,
          ),
        )
      ],
    );
  }
}
