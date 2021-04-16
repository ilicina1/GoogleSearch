import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/MainBodyWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';

class PageTwo extends StatefulWidget {
  final GoogleSignIn _googleSignIn;

  PageTwo(this._googleSignIn);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
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
