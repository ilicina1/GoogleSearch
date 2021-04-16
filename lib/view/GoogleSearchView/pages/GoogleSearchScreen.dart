import 'package:flutter/material.dart';
import 'package:google_pretrazivac/services/GoogleSearchServices/GoogleSearchServices.dart';
import 'package:google_pretrazivac/view/GoogleSearchView/widgets/MyWebViewWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../utils/shared/size_config.dart';
import 'package:google_pretrazivac/utils/textVariables/TextVariables.dart';

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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.logout,
                          size: 26,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoogleSearchServices().openGmail(context);
                      },
                      child: Icon(
                        Icons.mail,
                        size: 26,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: SizeConfig.screenHeight * 0.3,
                      width: SizeConfig.screenWidth,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Container(
                      height: 50,
                      width: SizeConfig.screenWidth * 0.8,
                      child: TextField(
                        // textfield za pretrazivac
                        controller: textFieldValueHolder,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Type something'),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          // dohvacanje vrijednosti iz textFielda
                          setState(() {
                            result = '';
                            result += textFieldValueHolder.text;
                          });
                          GoogleSearchServices().searchGoogle(context, result);
                        },
                        child: Text('Search'),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.blue),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
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
                    widget._googleSignIn.currentUser!.displayName.toString(),
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
          ),
        ],
      ),
    );
  }
}
