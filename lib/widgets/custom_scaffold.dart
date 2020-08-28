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
              onDetailsPressed: () => print('pressed'),
              decoration: BoxDecoration(color: Colors.green[400]),
            ),
            CustomListTile(
              icon: Icons.home,
              title: 'Home',
              goTo: SampleHome(),
            ),
            CustomListTile(
              icon: Icons.question_answer,
              title: 'QnA',
              goTo: Qna(),
            ),
            CustomListTile(
              icon: Icons.settings,
              title: 'Settings',
              goTo: Settings(),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}

class CustomListTile extends StatelessWidget {
  CustomListTile({this.icon, this.title, this.goTo});
  final IconData icon;
  final String title;
  final StatelessWidget goTo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[700],
      ),
      title: Text(title),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => goTo)),
      trailing: Icon(Icons.add),
    );
  }
}
