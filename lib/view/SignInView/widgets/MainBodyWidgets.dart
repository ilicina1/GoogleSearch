import 'package:flutter/material.dart';
import 'package:google_pretrazivac/services/SignInServices/SignInServices.dart';

class MainBodyWidgets {
  var context;

  MainBodyWidgets(this.context);

  Widget mainBodyWidgets(_googleSignIn) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
              child: Text(
                'Sign in with google account',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 35.0 : 25,
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () =>
                  SignInServices(context).handleSignIn(_googleSignIn),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'SignIn',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, primary: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
