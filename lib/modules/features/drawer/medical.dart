import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';

class MedicalAdvice extends StatefulWidget {
  @override
  _MedicalAdviceState createState() => _MedicalAdviceState();
}

class _MedicalAdviceState extends State<MedicalAdvice> {
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
      // drawer: Drawer(
      //   child: Stack(
      //     children: [
      //       Image(
      //         image: AssetImage(
      //             'assets/images/menu.png'
      //         ),
      //       ),
      //
      //       ListView(
      //         children: [
      //           InkWell(
      //             onTap: (){
      //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      //
      //             },
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('Home'),
      //               ),
      //               leading: Icon(Icons.home_outlined),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title:
      //               Text(
      //                 AppLocalizations.of(context).translate('profile'),
      //               ),
      //               leading: Icon(Icons.perm_identity),
      //             ),
      //           ),InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('our clinics'),
      //               ),
      //               leading: Icon(Icons.person),
      //             ),
      //           ),InkWell(
      //             onTap: (){
      //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => MedicalAdvice()));
      //
      //             },
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('Medical Advice'),
      //               ),
      //               leading: Icon(Icons.perm_identity),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title:
      //               Text(
      //                 AppLocalizations.of(context).translate('My Favourites'),
      //               ),
      //               leading: Icon(Icons.favorite),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('join Us'),
      //               ),
      //               //Text('join Us'),
      //               leading: Icon(Icons.add_box),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('About Heed'),
      //               ),
      //               //Text('About Heed'),
      //               leading: Icon(Icons.favorite),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){
      //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPAge()));
      //
      //             },
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('Settings'),
      //               ),
      //               //Text('Settings'),
      //               leading: Icon(Icons.settings),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title:Text(
      //                 AppLocalizations.of(context).translate('Supports Chat'),
      //               ),
      //               //Text('Supports Chat'),
      //               leading: Icon(Icons.chat_bubble_outline_outlined),
      //             ),
      //           ),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('History'),
      //               ),
      //               //Text('History'),
      //               leading: Icon(Icons.history),
      //             ),
      //           ),
      //           Divider(),
      //           InkWell(
      //             onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 AppLocalizations.of(context).translate('Logout'),
      //               ),
      //               //Text('Logout'),
      //               leading: Icon(Icons.logout,),
      //             ),
      //           ),
      //         ],
      //       ),],
      //   ),
      // ),
      drawer: myDrawer(context),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                '   Medical Advice',
                style: TextStyle(color: Colors.cyan, fontSize: 20),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/images/logo2@3x.png')),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/images/logo2@3x.png')),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/images/logo2@3x.png')),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/images/logo2@3x.png')),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll',
                            style: TextStyle(fontSize: 18, color: Colors.cyan),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
