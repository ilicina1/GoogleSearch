import 'package:flutter/material.dart';

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
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: Text(
              _googleSignIn.currentUser!.displayName.toString(),
              style: TextStyle(
                  fontSize:
                      // u zavisnosti da li je u pitanju mobitel
                      // ili tablet stavljamo razlicite velicine fonta
                      MediaQuery.of(context).size.width > 600 ? 22.0 : 16,
                  color: MediaQuery.of(context).size.width > 600
                      ? Colors.blue
                      : Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
