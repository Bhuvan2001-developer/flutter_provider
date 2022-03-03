import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/imgprovider.dart';
import 'package:flutter_provider/sec.dart';
import 'providers/cntprovider.dart';
import 'package:provider/provider.dart';
import 'sec.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Count"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/iron.jpg"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Numbers: ${context.watch<Count>().count}",
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              onPressed: () => (context).read<Count>().addition(),
              child: Icon(Icons.add),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () => (context).read<Count>().reset(),
              child: Icon(Icons.exposure_zero),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, "second"),
              child: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
