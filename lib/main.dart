import 'package:flutter/material.dart';
import 'package:fluttersample/views/home.dart';

void main() => runApp(FlutterSample());

/*
 * Layout
 */
class FlutterSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SampleHome(),
    );
  }
}
