import 'package:flutter/material.dart';
import 'package:google_pretrazivac/view/LoadingScreenView/pages/LoadingScreen.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/pages/GoogleSearchScreen.dart';
import 'package:google_pretrazivac/view/SignInView/pages/SignIn.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          // definisanje ruta
          '/': (context) => PageOne(),
          '/signin': (context) => SignIn(),
          '/pagetwo': (context) => GoogleSearchScreen(GoogleSignIn()),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
