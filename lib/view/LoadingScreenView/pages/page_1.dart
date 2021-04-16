import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_pretrazivac/services/size_config.dart';

class PageOne extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return PageOneApp(
      title: 'GoogleSearch',
    );
  }
}

class PageOneApp extends StatefulWidget {
  PageOneApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PageOneApp> {
  @override
  void initState() {
    super.initState();
    // zamjena stranice nakon 500ms
    Future.delayed(const Duration(milliseconds: 500), () async {
      Navigator.pushNamed(
        context,
        '/signin',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // izgled prve stranice ("loading stranice")
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.screenHeight * 0.5,
                  width: SizeConfig.screenWidth,
                  child: Image.asset('assets/images/google.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
