import 'package:flutter/material.dart';
import 'package:fluttersample/widgets/custom_widget.dart';
import 'package:fluttersample/widgets/custom_scaffold.dart';

class SampleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/inu_note_pc.png'),
                radius: 60.0,
                backgroundColor: Colors.green[600],
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            CustomHeaderText(data: 'Name'),
            SizedBox(
              height: 10.0,
            ),
            CustomContentText(data: 'retheviper'),
            SizedBox(
              height: 30.0,
            ),
            CustomHeaderText(data: 'Class'),
            SizedBox(
              height: 10.0,
            ),
            CustomContentText(data: 'Developer'),
            SizedBox(
              height: 30.0,
            ),
            CustomIconedRow(
              icon: Icons.devices,
              data: 'Java',
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomIconedRow(
              icon: Icons.dvr,
              data: 'Python',
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomIconedRow(
              icon: Icons.phone_iphone,
              data: 'Flutter?',
            ),
          ],
        ),
      ),
    );
  }
}
