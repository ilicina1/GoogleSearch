import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/textVariables/TextVariables.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/MyWebViewWidget.dart';

class GoogleSearchServices {
  // metoda zaduzena za searchgoogle webview
  void searchGoogle(BuildContext context, String text) async {
    // dodajemo tekst koji ce se pretrazivati parametru 'q'
    urlGoogle += text;
    // mijenjamo razmake sa znakom '+'
    urlGoogle = urlGoogle.replaceAll(' ', '+');
    // pushamo webview
    title = "Google search";
    selectedUrl = urlGoogle;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext cont5ext) => MyWebView(),
      ),
    );
  }

  // metoda zaduzena za gmail u webview
  void openGmail(BuildContext context) async {
    title = "Gmail";
    selectedUrl = urlGmail;
    // pushamo webview
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext cont5ext) => MyWebView(),
      ),
    );
  }
}
