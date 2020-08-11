import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/custom_scaffold.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settings = Icons.settings;
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
