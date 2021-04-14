import 'package:flutter/material.dart';
import 'package:google_pretrazivac/pages/page_2.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser = null;

  // metoda pomocu koje se prijavljuje
  Future<void> _handleSignIn() async {
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

  void listenOnCurrentUser() {
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      setState(() {
        _currentUser = account;
      });
      // ukoliko se uspjesno prijavilo _currentUser nece biti null te prelazimo
      // na sljedeci page
      if (_currentUser != null) {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageTwo(_googleSignIn)),
        );
        setState(() {
          _googleSignIn = _googleSignIn;
        });
      }
    });
    _googleSignIn.signInSilently();
  }

  @override
  void initState() {
    super.initState();
    // pri prvom pokretanju zelimo ukoliko je vec neko prijavljen da ga
    // odjavi kako bi se sljedeci mogao prijaviti
    _googleSignIn.signOut();
    listenOnCurrentUser();
    // _googleSignIn.onCurrentUserChanged
    //     .listen((GoogleSignInAccount? account) async {
    //   setState(() {
    //     _currentUser = account;
    //   });
    //   // ukoliko se uspjesno prijavilo _currentUser nece biti null te prelazimo
    //   // na sljedeci page
    //   if (_currentUser != null) {
    //     await Navigator.push(context, PageTwo(_googleSignIn));
    //     setState(() {
    //       _googleSignIn = _googleSignIn;
    //     });
    //   }
    // });
    // _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    // izgled signIn stranice
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Text(
                  'Sign in with google account',
                  style: TextStyle(
                    fontSize:
                        MediaQuery.of(context).size.width > 600 ? 35.0 : 25,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _handleSignIn,
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
      ),
    );
  }
}
