// import 'package:flutter/material.dart';
// import 'package:flutter_apppp11/clinic/clinic_page.dart';
// import 'package:flutter_apppp11/components/components.dart';
// import 'package:flutter_apppp11/components/slider.dart';
// import 'package:flutter_apppp11/modules/features/clinics/tabbarr.dart';
//
// class ListPage extends StatefulWidget {
//   @override
//   _ListPageState createState() => _ListPageState();
// }
//
// class _ListPageState extends State<ListPage> {
//   String groupValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(100),
//           child: AppBar(
//             centerTitle: true,
//             backgroundColor: Colors.white30,
//             flexibleSpace: ClipRRect(
//               borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(20),
//                   bottomLeft: Radius.circular(20)),
//               child: Container(
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/images/Header.png'),
//                         fit: BoxFit.fitWidth)),
//               ),
//             ),
//
//             // elevation: 0.1,
//             // backgroundColor: Colors.blue,
//             actions: [
//               IconButton(
//                   icon: Icon(
//                     Icons.notifications,
//                     color: Colors.white,
//                   ),
//                   onPressed: () {}),
//             ],
//           ),
//         ),
//         drawer: myDrawer(context),
//         body: Container(
//           child: Column(
//             children: <Widget>[
//               HeedSlider(),
//               // construct the profile details widget here
//               SizedBox(
//                 height: 150,
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 150,
//                       width: double.infinity,
//                       child: Image(
//                         image: AssetImage(
//                           'assets/images/11.png',
//                         ),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Positioned(
//                       right: 0,
//                       top: 0,
//                       left: 0,
//                       bottom: 0,
//                       child: Container(
//                           height: 180,
//                           width: double.infinity,
//                           padding: const EdgeInsets.only(
//                               top: 15, left: 15, right: 15, bottom: 15),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Bayan Dental Clinic',
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 18),
//                               ),
//                               Text(
//                                 'Kharafi tower - Kuwait City',
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 15),
//                               ),
//                               Text(
//                                 'Working hours: sat - thu : 9 am to 10 pm',
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 15),
//                               ),
//                             ],
//                           )),
//                     ),
//                   ],
//                 ),
//               ),
//
//               // the tab bar with two items
//               SizedBox(
//                 height: 50,
//                 child: AppBar(
//                   backgroundColor: Colors.white54,
//                   bottom: TabBar(
//                     tabs: [
//                       Tab(
//                           child: Text(
//                         'Services',
//                         style: TextStyle(fontSize: 16, color: Colors.cyan),
//                       )),
//                       Tab(
//                         child: Text(
//                           'info',
//                           style: TextStyle(fontSize: 16, color: Colors.black54),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     ListView(
//                       children: [
//                         Container(
//                             color: Colors.white,
//                             child: Column(
//                               children: [
//                                 SizedBox(
//                                   height: 20,
//                                 ),
//                                 Divider(
//                                   color: Colors.black54,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.of(context).push(
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     ClinicPage()));
//                                       },
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           SizedBox(
//                                             width: 5,
//                                           ),
//                                           Image(
//                                               height: 10,
//                                               image: AssetImage(
//                                                   'assets/images/back3@2x.png')),
//                                           Text(
//                                             ' Aliergy & immunology',
//                                             style: TextStyle(
//                                                 color: Colors.cyan,
//                                                 fontSize: 20),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 95,
//                                     ),
//                                     InkWell(
//                                         onTap: () {
//                                           Navigator.of(context).push(
//                                               MaterialPageRoute(
//                                                   builder: (context) =>
//                                                       GridPage()));
//                                         },
//                                         child: Image(
//                                           height: 30,
//                                           image: AssetImage(
//                                               'assets/images/menu2@3x.png'),
//                                         )),
//                                     SizedBox(
//                                       width: 1,
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 20,
//                                 ),
//                                 ListView(
//                                   shrinkWrap: true,
//                                   physics: NeverScrollableScrollPhysics(),
//                                   children: [
//                                     Container(
//                                         child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 image: AssetImage(
//                                                     'assets/images/logo2@3x.png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Bashar Ali Dib.',
//                                                   style: TextStyle(
//                                                       fontSize: 20,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Dermatologist',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                     'Confirm',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 height: 70,
//                                                 image: AssetImage(
//                                                     'assets/images/NoPath - Copy (-4.png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Vahida Sohaiokb',
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Cardiologists',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                       'Confirm'),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 height: 70,
//                                                 image: AssetImage(
//                                                     'assets/images/NoPath - Copy (-3.png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Ali Ebra. Al-Dei .',
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Family physicians',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                       'Confirm'),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           width: 50,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 height: 70,
//                                                 image: AssetImage(
//                                                     'assets/images/NoPath - Copy (-2.png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Ahmed Ali Elbaz',
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Gastroenterologists',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                       'Confirm'),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           width: 50,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 height: 70,
//                                                 image: AssetImage(
//                                                     'assets/images/NoPath - Copy (-1.png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Tamer M. Faried',
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Dermatologist',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 50,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                       'Confirm'),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           width: 50,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                         Row(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                             Image(
//                                                 height: 70,
//                                                 image: AssetImage(
//                                                     'assets/images/NoPath - Copy (14).png')),
//                                             SizedBox(
//                                               width: 7,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Dr. Abdulaziz AlMAnsouri',
//                                                   style: TextStyle(
//                                                       fontSize: 18,
//                                                       color: Colors.cyan),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Nephrologists',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 6,
//                                                 ),
//                                                 Text(
//                                                   'Free: 5.000 KD',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.black),
//                                                 )
//                                               ],
//                                             ),
//                                             SizedBox(
//                                               width: 10,
//                                             ),
//                                             RaisedButton(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(20.0),
//                                               ),
//                                               color: Colors.cyan,
//                                               onPressed: () {
//                                                 showDialog(
//                                                   context: context,
//                                                   builder:
//                                                       (BuildContext context) {
//                                                     return AlertDialog(
//                                                       shape: RoundedRectangleBorder(
//                                                           borderRadius:
//                                                               BorderRadius.all(
//                                                                   Radius.circular(
//                                                                       10.0))),
//                                                       title: Text(
//                                                         'Patient Info',
//                                                         style: TextStyle(
//                                                             color: Colors.cyan,
//                                                             fontSize: 25),
//                                                       ),
//                                                       content: Container(
//                                                           width: 300.0,
//                                                           height: 500.0,
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Name',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 10,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 300,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               7),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText:
//                                                                         'Mobile Number',
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 18,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Appointment:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             20),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 15,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Date',
//                                                                         suffixIcon: InkWell(
//                                                                             onTap: () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child: Icon(Icons.date_range)),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   SizedBox(
//                                                                     width: 20,
//                                                                   ),
//                                                                   Container(
//                                                                     height: 50,
//                                                                     width: 120,
//                                                                     decoration:
//                                                                         BoxDecoration(
//                                                                       borderRadius:
//                                                                           BorderRadius.circular(
//                                                                               7),
//                                                                     ),
//                                                                     child:
//                                                                         TextField(
//                                                                       decoration:
//                                                                           InputDecoration(
//                                                                         border: OutlineInputBorder(
//                                                                             borderSide:
//                                                                                 BorderSide(color: Colors.cyan)),
//                                                                         hintText:
//                                                                             'Time',
//                                                                         suffixIcon:
//                                                                             Icon(Icons.access_time),
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 25,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     'Select payment options:',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 20,
//                                                               ),
//                                                               Row(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'KNet',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value: 'no',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Cash',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             15,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                   Radio(
//                                                                     value:
//                                                                         'yes',
//                                                                     groupValue:
//                                                                         groupValue,
//                                                                     onChanged:
//                                                                         (value) {
//                                                                       // setState(() {
//                                                                       //   this.groupValue = value;
//                                                                       // });
//                                                                     },
//                                                                   ),
//                                                                   Text(
//                                                                     'Insurance',
//                                                                     style: TextStyle(
//                                                                         fontSize:
//                                                                             11,
//                                                                         color: Colors
//                                                                             .black),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 50,
//                                                               ),
//                                                               ButtonTheme(
//                                                                 minWidth: 200,
//                                                                 child:
//                                                                     RaisedButton(
//                                                                   elevation: 2,
//                                                                   textColor:
//                                                                       Colors
//                                                                           .white,
//                                                                   shape:
//                                                                       RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadius.circular(
//                                                                             20.0),
//                                                                   ),
//                                                                   color: Colors
//                                                                       .black54,
//                                                                   onPressed:
//                                                                       () {},
//                                                                   child: Text(
//                                                                       'Confirm'),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 height: 30,
//                                                               ),
//                                                             ],
//                                                           )),
//                                                     );
//                                                   },
//                                                 );
//                                               },
//                                               child: Text('Reserve'),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           width: 50,
//                                         ),
//                                         Divider(
//                                           color: Colors.black54,
//                                         ),
//                                       ],
//                                     ))
//                                   ],
//                                 )
//                               ],
//                             )),
//                       ],
//                     ),
//                     ListView(
//                       children: [
//                         Container(
//                           color: Colors.white,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Divider(
//                                 color: Colors.black54,
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Clinic location on map:',
//                                     style: TextStyle(fontSize: 20),
//                                   ),
//                                   Icon(
//                                     Icons.map,
//                                     size: 40,
//                                   )
//                                 ],
//                               ),
//                               Divider(
//                                 color: Colors.black54,
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 'Insurance Companies:',
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               GridView.count(
//                                 shrinkWrap: true,
//                                 physics: NeverScrollableScrollPhysics(),
//                                 crossAxisCount: 4,
//                                 mainAxisSpacing: 2,
//                                 children: [
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/plane@2x.png'),
//                                   ),
//                                   Image(
//                                     image:
//                                         AssetImage('assets/images/lab3@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage('assets/images/m@2x.png'),
//                                   ),
//                                   Image(
//                                     image: AssetImage(
//                                         'assets/images/fossa@2x.png'),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
