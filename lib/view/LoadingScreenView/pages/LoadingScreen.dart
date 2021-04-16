import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_pretrazivac/utils/shared/size_config.dart';
import 'package:google_pretrazivac/view/LoadingScreenView/widgets/MainBodyWidget.dart';

// class PageOne extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return PageOneApp(
//       title: 'GoogleSearch',
//     );
//   }
// }

class LoadingScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LoadingScreenApp(
      title: 'GoogleSearch',
    );
  }
}

// class PageOneApp extends StatefulWidget {
//   PageOneApp({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

class LoadingScreenApp extends StatefulWidget {
  LoadingScreenApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoadingScreenApp> {
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
      body: MainBodyWidget().mainBodyWidget(),
    );
  }
}
