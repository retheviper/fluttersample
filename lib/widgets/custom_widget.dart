import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  CustomHeaderText({this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: Colors.white, letterSpacing: 2.0),
    );
  }
}

class CustomContentText extends StatelessWidget {
  CustomContentText({this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: Colors.white,
          letterSpacing: 2.0,
          fontSize: 20.0,
          fontWeight: FontWeight.bold),
    );
  }
}

class CustomIconedRow extends StatelessWidget {
  CustomIconedRow({this.icon, this.data});
  final IconData icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(data,
            style: TextStyle(
                fontSize: 16.0, color: Colors.white, letterSpacing: 1.0))
      ],
    );
  }
}
