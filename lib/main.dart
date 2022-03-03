import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/cntprovider.dart';
import 'package:flutter_provider/sec.dart';
import 'package:provider/provider.dart';
import 'sec.dart';
import 'package:flutter_provider/providers/imgprovider.dart';

import 'homescreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Count()),
      ChangeNotifierProvider(create: (_) => text())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => HomeScreen(),
      "second": (context) => imgsscreen(),
    });
  }
}
