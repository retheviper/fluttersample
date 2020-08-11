import 'package:flutter/material.dart';
import 'package:fluttersample/views/home.dart';
import 'package:fluttersample/views/qna.dart';
import 'package:fluttersample/views/settings.dart';

class CustomScaffold extends StatelessWidget {
  CustomScaffold({this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      appBar: AppBar(
        title: Text('Flutter sample'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        elevation: 0.0, // Shadow
        actions: [
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/inu_note_pc.png'),
                backgroundColor: Colors.green[600],
              ),
              accountName: Text('retheviper'),
              accountEmail: Text('retheviper@gmail.com'),
              onDetailsPressed: () => print('arrow'),
              decoration: BoxDecoration(color: Colors.green[400]),
            ),
            CustomListTile(
              icon: Icons.home,
              title: 'Home',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SampleHome())),
            ),
            CustomListTile(
              icon: Icons.question_answer,
              title: 'QnA',
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Qna())),
            ),
            CustomListTile(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings())),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}

class CustomListTile extends StatelessWidget {
  CustomListTile({this.icon, this.title, this.onTap});
  final IconData icon;
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[700],
      ),
      title: Text(title),
      onTap: onTap,
      trailing: Icon(Icons.add),
    );
  }
}
