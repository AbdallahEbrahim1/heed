import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/category_details/category_details_manager.dart';
import 'package:flutter_apppp11/modules/features/category_details/category_details_model.dart';
import 'package:flutter_apppp11/modules/features/clinics/clinics_page.dart';

class CategoryDetailsPage extends StatefulWidget {
  final int categoryId;

  const CategoryDetailsPage({Key key, @required this.categoryId})
      : super(key: key);
  @override
  _CategoryDetailsPageState createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
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
              bottomLeft: Radius.circular(20),
            ),
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
                onPressed: () {}),
          ],
        ),
      ),
      drawer: myDrawer(context),
      body: StreamBuilder<CategoryDetailsModel>(
          stream: locator<CategoryDetailsManager>()
              .categoryDetails$(categoryId: widget.categoryId),
          builder:
              (context, AsyncSnapshot<CategoryDetailsModel> clinicsSnapshot) {
            return clinicsSnapshot.hasData
                ? ListView.separated(
                    itemCount: clinicsSnapshot.data.data.clinics?.length ?? 0,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ClinicsPage(),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: double.infinity,
                            child: Image.network(
                              '${clinicsSnapshot.data.data.clinics[index].image}',
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.network(
                                // placeholder
                                'https://ahmedshatat.com/wp-content/uploads/2020/10/placeholder-768x512.png',
                                fit: BoxFit.fill,
                              ),
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
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image(
                                        height: 40,
                                        image: AssetImage(
                                          clinicsSnapshot
                                                      .data
                                                      .data
                                                      .clinics[index]
                                                      .favourite ==
                                                  'yes'
                                              ? 'assets/images/like@3x.png'
                                              : 'assets/images/like2@3x.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${clinicsSnapshot.data.data.clinics[index].name}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '${clinicsSnapshot.data.data.clinics[index].address}',
                                              // AppLocalizations.of(context)
                                              //     .translate("Second_string"),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (clinicsSnapshot.data.data
                                              .clinics[index].s24Hours ==
                                          'yes')
                                        Image(
                                          height: 40,
                                          // color: Colors.red,
                                          image: AssetImage(
                                            'assets/images/delivery@2x.png',
                                          ),
                                        ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(); //   Container(
            //   child: ListView(
            //     children: [
            //       image_carousel,

            //       SizedBox(
            //         height: 3,
            //       ),
            //       InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(
            //               MaterialPageRoute(builder: (context) => DentalPage()));
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
            //                 height: 180,
            //                 width: double.infinity,
            //                 padding: const EdgeInsets.only(
            //                     bottom: 15, top: 15, right: 15, left: 15),
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   crossAxisAlignment: CrossAxisAlignment.end,
            //                   children: [
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Image(
            //                             height: 40,
            //                             image:
            //                                 AssetImage('assets/images/like2@3x.png')),
            //                       ],
            //                     ),
            //                     Row(
            //                       children: [
            //                         Row(
            //                           crossAxisAlignment: CrossAxisAlignment.start,
            //                           children: [
            //                             Column(
            //                               crossAxisAlignment:
            //                                   CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   AppLocalizations.of(context)
            //                                       .translate("First_string"),
            //                                   style: TextStyle(
            //                                       color: Colors.white, fontSize: 20),
            //                                 ),
            //                                 Text(
            //                                   AppLocalizations.of(context)
            //                                       .translate("Second_string"),
            //                                   style: TextStyle(
            //                                       color: Colors.white, fontSize: 20),
            //                                 ),
            //                               ],
            //                             ),
            //                           ],
            //                         ),
            //                       ],
            //                     )
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
            //           Navigator.of(context).push(
            //               MaterialPageRoute(builder: (context) => DentalPage()));
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
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Image(
            //                             height: 40,
            //                             image:
            //                                 AssetImage('assets/images/like2@3x.png')),
            //                       ],
            //                     ),
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       crossAxisAlignment: CrossAxisAlignment.end,
            //                       children: [
            //                         Column(
            //                           crossAxisAlignment: CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               AppLocalizations.of(context)
            //                                   .translate("First_string"),
            //                               style: TextStyle(
            //                                   color: Colors.white, fontSize: 20),
            //                             ),
            //                             Text(
            //                               AppLocalizations.of(context)
            //                                   .translate("Second_string"),
            //                               style: TextStyle(
            //                                   color: Colors.white, fontSize: 20),
            //                             ),
            //                           ],
            //                         ),
            //                         Image(
            //                             height: 80,
            //                             image: AssetImage(
            //                                 'assets/images/filter@2x.png')),
            //                       ],
            //                     )
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
            //           Navigator.of(context).push(
            //               MaterialPageRoute(builder: (context) => DentalPage()));
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
            //                 height: 180,
            //                 width: double.infinity,
            //                 padding: const EdgeInsets.only(
            //                     top: 15, left: 15, right: 15, bottom: 15),
            //                 child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Image(
            //                             height: 40,
            //                             image:
            //                                 AssetImage('assets/images/like2@3x.png')),
            //                       ],
            //                     ),
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       crossAxisAlignment: CrossAxisAlignment.end,
            //                       children: [
            //                         Column(
            //                           crossAxisAlignment: CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               AppLocalizations.of(context)
            //                                   .translate("First_string"),
            //                               style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 20,
            //                               ),
            //                             ),
            //                             Text(
            //                               AppLocalizations.of(context)
            //                                   .translate("Second_string"),
            //                               style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 20,
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                         Image(
            //                           height: 40,
            //                           image: AssetImage(
            //                             'assets/images/delivery@2x.png',
            //                           ),
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
          }),
    );
  }
}
