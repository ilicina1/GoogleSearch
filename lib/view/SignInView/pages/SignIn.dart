import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/SignInView/widgets/MainBodyWidgets.dart';
import 'package:google_pretrazivac/viewModel/SignInViewModel.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  void initState() {
    super.initState();
    // pri prvom pokretanju zelimo ukoliko je vec neko prijavljen da ga
    // odjavi kako bi se sljedeci mogao prijaviti
    _googleSignIn.signOut();
    listenOnCurrentUser(context, _googleSignIn);
  }

  @override
  Widget build(BuildContext context) {
    // izgled signIn stranice
    return Scaffold(
      backgroundColor: Colors.white,
      body: MainBodyWidgets(context).mainBodyWidgets(_googleSignIn),
    );
  }
}
