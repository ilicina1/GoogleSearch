import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/MainBodyWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSearchScreen extends StatefulWidget {
  final GoogleSignIn _googleSignIn;

  GoogleSearchScreen(this._googleSignIn);
  @override
  _GoogleSearchScreenState createState() => _GoogleSearchScreenState();
}

class _GoogleSearchScreenState extends State<GoogleSearchScreen> {
  final textFieldValueHolder = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MainBodyWidget(context)
          .mainBodyWidget(textFieldValueHolder, widget._googleSignIn),
    );
  }
}
