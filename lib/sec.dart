import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/imgprovider.dart';
import 'package:provider/provider.dart';

class imgsscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: 50,
            child: Text("${(context).watch<text>().nam}")),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
