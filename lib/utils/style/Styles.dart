import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/shared/size_config.dart';

class Styles {
  static final ButtonStyle blueButton =
      TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue);

  static final TextStyle doneByStyle = TextStyle(
      fontSize:
          // u zavisnosti da li je u pitanju mobitel
          // ili tablet stavljamo razlicite velicine fonta
          SizeConfig.screenWidth > 600 ? 22.0 : 16,
      color: SizeConfig.screenWidth > 600 ? Colors.blue : Colors.black);

  static final InputDecoration decoration =
      InputDecoration(border: OutlineInputBorder(), hintText: 'Type something');

  static final TextStyle siginHone = TextStyle(
    fontSize: SizeConfig.screenWidth > 600 ? 35.0 : 25,
  );
}
