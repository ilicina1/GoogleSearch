import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/pages/GoogleSearchScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInServices {
  var context;

  SignInServices(this.context);

  // metoda pomocu koje se prijavljuje
  void handleSignIn(_googleSignIn) async {
    try {
      // ukoliko postoji korisnik vec zelimo ga odjaviti i dati mogucnost
      // da se opet prijavi pomocu google account-a
      await _googleSignIn.signOut();
      await _googleSignIn.signIn();
      print(_googleSignIn.currentUser!.email);
    } catch (error) {
      print(error);
    }
  }

  void listenOnCurrentUser(_googleSignIn) {
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      // ukoliko se uspjesno prijavilo _currentUser nece biti null te prelazimo
      // na sljedeci page
      if (_googleSignIn.currentUser != null) {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageTwo(_googleSignIn)),
        );
        // setState(() {
        //   _googleSignIn = _googleSignIn;
        // });
      }
    });
    _googleSignIn.signInSilently();
  }
}
