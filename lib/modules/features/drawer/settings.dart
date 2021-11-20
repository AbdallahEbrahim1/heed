import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white30,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Header.png'),
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),

          // elevation: 0.1,
          // backgroundColor: Colors.blue,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
      ),
      drawer: myDrawer(context),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '   Settings ',
                style: TextStyle(color: Colors.cyan, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.cyan,
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Language',
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.cyan,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Language',
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.cyan,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notification',
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.cyan,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.cyan,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.cyan,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
