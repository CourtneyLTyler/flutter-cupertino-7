import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_7/util.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('BMI'),
        ),
        child: SafeArea(
          child: Column(children: [
            Image(
              image: AssetImage('scale.webp'),
              fit: BoxFit.cover,
              height: 500,
            ),
            Util.paddingTop,
            Row(
              children: [
                Text('Height'),
                Expanded(
                  child: CupertinoTextField(),
                ),
                Text('Weight'),
                Expanded(
                  child: CupertinoTextField(),
                ),
              ],
            ),
            CupertinoButton(child: Text('Calculate BMI'), onPressed: () {})
          ]),
        ));
  }
}
