import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/shared/size_config.dart';

class MainBodyWidget {
  Widget mainBodyWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
          child: Column(
            children: <Widget>[
              Container(
                height: SizeConfig.screenHeight * 0.5,
                width: SizeConfig.screenWidth,
                child: Image.asset('assets/images/google.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
