import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_model.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_page.dart';
import 'package:flutter_apppp11/modules/features/clinics/clinics_manager.dart';
import 'package:flutter_apppp11/modules/features/clinics/clinics_model.dart';

class ClinicsPage extends StatefulWidget {
  @override
  _ClinicsPageState createState() => _ClinicsPageState();
}

class _ClinicsPageState extends State<ClinicsPage> {
  ClinicModel model;
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
                  fit: BoxFit.fitWidth,
                ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: myDrawer(context),
      body: StreamBuilder<ClinicsModel>(
        stream: locator<ClinicsManager>().home$,
        builder: (context, AsyncSnapshot<ClinicsModel> clinicsSnapshot) {
          return ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                navigateTo(
                  context,
                  ClinicPage(
                    model: clinicsSnapshot.data.data.clinics[index].image,
                    modelName: clinicsSnapshot.data.data.clinics[index].name,
                    modelAddress:
                        clinicsSnapshot.data.data.clinics[index].address,
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: Image.network(
                      clinicsSnapshot.data.data.clinics[index].image,
                      //  ?clinicsSnapshot.data.data.clinics[index].image: '',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                        height: 180,
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            top: 15, left: 15, right: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${clinicsSnapshot.data.data.clinics[index].name}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              '${clinicsSnapshot.data.data.clinics[index].address}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: 4,
            ),
            itemCount: clinicsSnapshot.data.data.clinics?.length ?? 0,
          );
        },
      ),
      // Container(
      //   child: ListView(
      //     children: [
      //       image_carousel,
      //       InkWell(
      //         onTap: () {
      //           Navigator.of(context).push(
      //               MaterialPageRoute(builder: (context) => ProfilePage()));
      //         },
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 180,
      //               width: double.infinity,
      //               child: Image(
      //                 image: AssetImage(
      //                   'assets/images/11.png',
      //                 ),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Positioned(
      //               right: 0,
      //               top: 0,
      //               left: 0,
      //               bottom: 0,
      //               child: Container(
      //                   height: 180,
      //                   width: double.infinity,
      //                   padding: const EdgeInsets.only(
      //                       top: 15, left: 15, right: 15, bottom: 15),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("First_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("Second_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                     ],
      //                   )),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdsPage()));
      //         },
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 180,
      //               width: double.infinity,
      //               child: Image(
      //                 image: AssetImage('assets/images/10.png'),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Positioned(
      //               left: 0,
      //               top: 0,
      //               right: 0,
      //               child: Container(
      //                   height: 180,
      //                   width: double.infinity,
      //                   padding: const EdgeInsets.only(
      //                       bottom: 15, top: 15, right: 15, left: 15),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("First_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("Second_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                       //     Text(
      //                       //       'Bayan Dental Clinic\nKharafi Tower - Kuwait City',
      //                       //       style: TextStyle(
      //                       //           color: Colors.white,
      //                       //           fontSize: 17
      //                       //       )
      //                       //       ,),
      //                     ],
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdsPage()));
      //         },
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 180,
      //               width: double.infinity,
      //               child: Image(
      //                 image: AssetImage(
      //                   'assets/images/9.png',
      //                 ),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Positioned(
      //               right: 0,
      //               top: 0,
      //               left: 0,
      //               bottom: 0,
      //               child: Container(
      //                 height: 180,
      //                 width: double.infinity,
      //                 padding: const EdgeInsets.only(
      //                     top: 15, left: 15, right: 15, bottom: 15),
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       AppLocalizations.of(context)
      //                           .translate("First_string"),
      //                       style: TextStyle(color: Colors.white, fontSize: 20),
      //                     ),
      //                     Text(
      //                       AppLocalizations.of(context)
      //                           .translate("Second_string"),
      //                       style: TextStyle(color: Colors.white, fontSize: 20),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdsPage()));
      //         },
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 180,
      //               width: double.infinity,
      //               child: Image(
      //                 image: AssetImage(
      //                   'assets/images/8.png',
      //                 ),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Positioned(
      //               right: 0,
      //               top: 0,
      //               left: 0,
      //               bottom: 0,
      //               child: Container(
      //                   height: 180,
      //                   width: double.infinity,
      //                   padding: const EdgeInsets.only(
      //                       top: 15, left: 15, right: 15, bottom: 15),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("First_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("Second_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                     ],
      //                   )),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //       InkWell(
      //         onTap: () {
      //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdsPage()));
      //         },
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 180,
      //               width: double.infinity,
      //               child: Image(
      //                 image: AssetImage('assets/images/7.png'),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Positioned(
      //               right: 0,
      //               top: 0,
      //               left: 0,
      //               child: Container(
      //                   height: 180,
      //                   width: double.infinity,
      //                   padding: const EdgeInsets.only(
      //                       left: 15, right: 15, top: 15, bottom: 15),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("First_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                       Text(
      //                         AppLocalizations.of(context)
      //                             .translate("Second_string"),
      //                         style:
      //                             TextStyle(color: Colors.white, fontSize: 20),
      //                       ),
      //                     ],
      //                   )),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 3,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
