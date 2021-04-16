import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/LoadingScreenView/pages/page_1.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/pages/page_2.dart';
import 'package:google_pretrazivac/view/SignInView/pages/sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          // definisanje ruta
          '/': (context) => PageOne(),
          '/signin': (context) => SignIn(),
          '/pagetwo': (context) => PageTwo(GoogleSignIn()),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
