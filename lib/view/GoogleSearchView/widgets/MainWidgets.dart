import 'package:flutter/material.dart';
import 'package:google_pretrazivac/services/GoogleSearchServices/GoogleSearchServices.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/GoogleSearchWidgets.dart';
import '../../../utils/shared/size_config.dart';
import 'package:google_pretrazivac/utils/textVariables/TextVariables.dart';

class MainWidgets {
  var context;

  MainWidgets(this.context);

  Widget mainWidgets(textFieldValueHolder) {
    return Column(
      children: <Widget>[
        Container(
          height: SizeConfig.screenHeight * 0.3,
          width: SizeConfig.screenWidth,
          child: Image.asset('assets/images/google.png'),
        ),
        GoogleSearchWidgets(context).textFieldWidget(textFieldValueHolder),
        Container(
          child: TextButton(
            onPressed: () {
              // dohvacanje vrijednosti iz textFielda
              result = '';
              result = textFieldValueHolder.text;

              GoogleSearchServices().searchGoogle(context, result);
            },
            child: Text('Search'),
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.blue),
          ),
        )
      ],
    );
  }
}
