// import 'package:flutter/material.dart';
// import 'package:flutter_apppp11/components/components.dart';
// import 'package:flutter_apppp11/language/lang.dart';
//
// class bbb extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//                 child: TabBarView(
//                   children: [
//                     ListView(
//                       children: [
//                         Container(
//                             color: Colors.white,
//                             child: Column(
//                               children: [
//                                 SizedBox(
//                                   height: 25,
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
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           SizedBox(
//                                             width: 5,
//                                           ),
//                                           Image(
//                                               height: 10,
//                                               image: AssetImage(
//                                                   'assets/images/back3@2x.png')),
//                                           Text(
//                                             AppLocalizations.of(context)
//                                                 .translate(
//                                                     "Aliergy & immunology"),
//                                             style:
//                                                 TextStyle(color: Colors.cyan),
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
//                                                       ListPage()));
//                                         },
//                                         child: Image(
//                                           height: 30,
//                                           image: AssetImage(
//                                               'assets/images/menu3@3x.png'),
//                                         )),
//                                     SizedBox(
//                                       width: 1,
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 GridView.count(
//                                   shrinkWrap: true,
//                                   physics: NeverScrollableScrollPhysics(),
//                                   crossAxisCount: 2,
//                                   mainAxisSpacing: 2,
//                                   children: <Widget>[
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           image: AssetImage(
//                                               'assets/images/logo2@3x.png'),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           AppLocalizations.of(context)
//                                               .translate("Direct Reservation"),
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                       Radius.circular(
//                                                         10.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                       "Patient Info",
//                                                     ),
//                                                     style: TextStyle(
//                                                       color: Colors.cyan,
//                                                       fontSize: 25,
//                                                     ),
//                                                   ),
//                                                   // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           7),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Name",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border: OutlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide(
//                                                                             color:
//                                                                                 Colors.cyan)),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Mobile Number",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Appointment:",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 20,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Date",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                       onTap:
//                                                                           () {
//                                                                         FocusScope.of(context)
//                                                                             .requestFocus(new FocusNode());
//                                                                         showDatePicker(
//                                                                           context:
//                                                                               context,
//                                                                           initialDate:
//                                                                               DateTime.now(),
//                                                                           firstDate: DateTime(
//                                                                               2020,
//                                                                               1),
//                                                                           lastDate: DateTime(
//                                                                               2030,
//                                                                               12),
//                                                                         );
//                                                                       },
//                                                                       child: Icon(
//                                                                           Icons
//                                                                               .date_range),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Time",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         Icon(
//                                                                       Icons
//                                                                           .access_time,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Select payment options:",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                 ),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "KNet",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   //   setState(() {
//                                                                   //     this.groupValue =
//                                                                   //         value;
//                                                                   //   });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Cash",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Insurance"),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 11,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                   20.0,
//                                                                 ),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Confirm",
//                                                                 ),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text(
//                                             AppLocalizations.of(context)
//                                                 .translate("Reserve"),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           height: 75,
//                                           image: AssetImage(
//                                             'assets/images/NoPath - Copy (-4.png',
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           'Dr. Vahida Sohaib',
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         Text('Cardiologists'),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                       Radius.circular(
//                                                         10.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                       "Patient Info",
//                                                     ),
//                                                     style: TextStyle(
//                                                       color: Colors.cyan,
//                                                       fontSize: 25,
//                                                     ),
//                                                   ),
//                                                   // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Name",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Mobile Number",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Appointment:",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 20,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border: OutlineInputBorder(
//                                                                         borderSide:
//                                                                             BorderSide(color: Colors.cyan)),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Date",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                       onTap:
//                                                                           () {
//                                                                         FocusScope.of(context)
//                                                                             .requestFocus(new FocusNode());
//                                                                         showDatePicker(
//                                                                           context:
//                                                                               context,
//                                                                           initialDate:
//                                                                               DateTime.now(),
//                                                                           firstDate: DateTime(
//                                                                               2020,
//                                                                               1),
//                                                                           lastDate: DateTime(
//                                                                               2030,
//                                                                               12),
//                                                                         );
//                                                                       },
//                                                                       child:
//                                                                           Icon(
//                                                                         Icons
//                                                                             .date_range,
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Time",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         Icon(
//                                                                       Icons
//                                                                           .access_time,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Select payment options:",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                 ),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "KNet",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Cash",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Insurance",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 11,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                   20.0,
//                                                                 ),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Confirm",
//                                                                 ),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text('Reserve'),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           height: 75,
//                                           image: AssetImage(
//                                             'assets/images/NoPath - Copy (-3.png',
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           'Dr. Ali E. Al-Dei',
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         Text('Family physicians'),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                       Radius.circular(
//                                                         10.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                       "Patient Info",
//                                                     ),
//                                                     style: TextStyle(
//                                                       color: Colors.cyan,
//                                                       fontSize: 25,
//                                                     ),
//                                                   ),
//                                                   // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Name",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Mobile Number",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Appointment:",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 20,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Date",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                       onTap:
//                                                                           () {
//                                                                         FocusScope.of(context)
//                                                                             .requestFocus(new FocusNode());
//                                                                         showDatePicker(
//                                                                           context:
//                                                                               context,
//                                                                           initialDate:
//                                                                               DateTime.now(),
//                                                                           firstDate: DateTime(
//                                                                               2020,
//                                                                               1),
//                                                                           lastDate: DateTime(
//                                                                               2030,
//                                                                               12),
//                                                                         );
//                                                                       },
//                                                                       child: Icon(
//                                                                           Icons
//                                                                               .date_range),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Time",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         Icon(
//                                                                       Icons
//                                                                           .access_time,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Select payment options:",
//                                                                 ),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "KNet",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Cash",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Insurance",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 11,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                   20.0,
//                                                                 ),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Confirm",
//                                                                 ),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text(
//                                             AppLocalizations.of(context)
//                                                 .translate("Reserve"),
//                                           ),
//                                           //Text('Reserve'),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           height: 75,
//                                           image: AssetImage(
//                                             'assets/images/NoPath - Copy (-2.png',
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           'Dr. Ahmed Ali Elbaz',
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         Text('Gastroenterologists'),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                       Radius.circular(
//                                                         10.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                             "Patient Info"),
//                                                     style: TextStyle(
//                                                       color: Colors.cyan,
//                                                       fontSize: 25,
//                                                     ),
//                                                   ),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Name",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Mobile Number",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Appointment:"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         20),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Date",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                       onTap:
//                                                                           () {
//                                                                         FocusScope.of(context)
//                                                                             .requestFocus(new FocusNode());
//                                                                         showDatePicker(
//                                                                           context:
//                                                                               context,
//                                                                           initialDate:
//                                                                               DateTime.now(),
//                                                                           firstDate: DateTime(
//                                                                               2020,
//                                                                               1),
//                                                                           lastDate: DateTime(
//                                                                               2030,
//                                                                               12),
//                                                                         );
//                                                                       },
//                                                                       child: Icon(
//                                                                           Icons
//                                                                               .date_range),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Time",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         Icon(Icons
//                                                                             .access_time),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Select payment options:",
//                                                                 ),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "KNet",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Cash",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Insurance",
//                                                                 ),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 11,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                   20.0,
//                                                                 ),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Confirm",
//                                                                 ),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text(
//                                             AppLocalizations.of(context)
//                                                 .translate("Reserve"),
//                                           ),
//                                           //Text('Reserve'),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           height: 70,
//                                           image: AssetImage(
//                                             'assets/images/NoPath - Copy (-1.png',
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           'Dr. Tamer M. Faried',
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         Text('Geriatric Medicine'),
//                                         Text('Specialists'),
//                                         SizedBox(
//                                           height: 1,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadius.all(
//                                                       Radius.circular(
//                                                         10.0,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                       "Patient Info",
//                                                     ),
//                                                     style: TextStyle(
//                                                       color: Colors.cyan,
//                                                       fontSize: 25,
//                                                     ),
//                                                   ),
//                                                   // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                 7,
//                                                               ),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Name",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           7),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border:
//                                                                     OutlineInputBorder(
//                                                                   borderSide:
//                                                                       BorderSide(
//                                                                     color: Colors
//                                                                         .cyan,
//                                                                   ),
//                                                                 ),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Mobile Number",
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Appointment:",
//                                                                 ),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         20),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Date",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                       onTap:
//                                                                           () {
//                                                                         FocusScope.of(context)
//                                                                             .requestFocus(new FocusNode());
//                                                                         showDatePicker(
//                                                                           context:
//                                                                               context,
//                                                                           initialDate:
//                                                                               DateTime.now(),
//                                                                           firstDate: DateTime(
//                                                                               2020,
//                                                                               1),
//                                                                           lastDate: DateTime(
//                                                                               2030,
//                                                                               12),
//                                                                         );
//                                                                       },
//                                                                       child:
//                                                                           Icon(
//                                                                         Icons
//                                                                             .date_range,
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
//                                                                 decoration:
//                                                                     BoxDecoration(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                     7,
//                                                                   ),
//                                                                 ),
//                                                                 child:
//                                                                     TextField(
//                                                                   decoration:
//                                                                       InputDecoration(
//                                                                     border:
//                                                                         OutlineInputBorder(
//                                                                       borderSide:
//                                                                           BorderSide(
//                                                                         color: Colors
//                                                                             .cyan,
//                                                                       ),
//                                                                     ),
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                       "Time",
//                                                                     ),
//                                                                     suffixIcon:
//                                                                         Icon(
//                                                                       Icons
//                                                                           .access_time,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Select payment options:",
//                                                                 ),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "KNet"),
//                                                                 style:
//                                                                     TextStyle(
//                                                                   fontSize: 15,
//                                                                   color: Colors
//                                                                       .black,
//                                                                 ),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                   "Cash",
//                                                                 ),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15,
//                                                                     color: Colors
//                                                                         .black),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Insurance"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         11,
//                                                                     color: Colors
//                                                                         .black),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             20.0),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Confirm"),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text(
//                                             AppLocalizations.of(context)
//                                                 .translate("Reserve"),
//                                           ),
//                                           //Text('Reserve'),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Image(
//                                           height: 70,
//                                           image: AssetImage(
//                                               'assets/images/NoPath - Copy (14).png'),
//                                         ),
//                                         SizedBox(
//                                           height: 15,
//                                         ),
//                                         Text(
//                                           'Dr. Abdulaziz\nAlMansouri',
//                                           style: TextStyle(color: Colors.cyan),
//                                         ),
//                                         Text('Nephrologists'),
//                                         SizedBox(
//                                           height: 1,
//                                         ),
//                                         RaisedButton(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.0),
//                                           ),
//                                           color: Colors.cyan,
//                                           onPressed: () {
//                                             showDialog(
//                                               context: context,
//                                               builder: (BuildContext context) {
//                                                 return AlertDialog(
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                           BorderRadius.all(
//                                                               Radius.circular(
//                                                                   10.0))),
//                                                   title: Text(
//                                                     AppLocalizations.of(context)
//                                                         .translate(
//                                                             "Patient Info"),
//                                                     style: TextStyle(
//                                                         color: Colors.cyan,
//                                                         fontSize: 25),
//                                                   ),
//                                                   // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
//                                                   content: Container(
//                                                       width: 300.0,
//                                                       height: 500.0,
//                                                       child: Column(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .center,
//                                                         children: [
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           7),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border: OutlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide(
//                                                                             color:
//                                                                                 Colors.cyan)),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Name"),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Container(
//                                                             height: 50,
//                                                             width: 300,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           7),
//                                                             ),
//                                                             child: TextField(
//                                                               decoration:
//                                                                   InputDecoration(
//                                                                 border: OutlineInputBorder(
//                                                                     borderSide:
//                                                                         BorderSide(
//                                                                             color:
//                                                                                 Colors.cyan)),
//                                                                 hintText: AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Mobile Number"),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 18,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Appointment:"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         20),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 15,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                             "Date"),
//                                                                     suffixIcon:
//                                                                         InkWell(
//                                                                             onTap:
//                                                                                 () {
//                                                                               FocusScope.of(context).requestFocus(new FocusNode());
//                                                                               showDatePicker(
//                                                                                 context: context,
//                                                                                 initialDate: DateTime.now(),
//                                                                                 firstDate: DateTime(2020, 1),
//                                                                                 lastDate: DateTime(2030, 12),
//                                                                               );
//                                                                             },
//                                                                             child:
//                                                                                 Icon(Icons.date_range)),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               SizedBox(
//                                                                 width: 20,
//                                                               ),
//                                                               Container(
//                                                                 height: 50,
//                                                                 width: 120,
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
//                                                                     hintText: AppLocalizations.of(
//                                                                             context)
//                                                                         .translate(
//                                                                             "Time"),
//                                                                     suffixIcon:
//                                                                         Icon(Icons
//                                                                             .access_time),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 25,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Select payment options:"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15),
//                                                               ),
//                                                               // Text('Select payment options:',style: TextStyle(fontSize: 15),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 20,
//                                                           ),
//                                                           Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             children: [
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "KNet"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15,
//                                                                     color: Colors
//                                                                         .black),
//                                                               ),
//                                                               //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),
//
//                                                               Radio(
//                                                                 value: 'no',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Cash"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         15,
//                                                                     color: Colors
//                                                                         .black),
//                                                               ),
//                                                               // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
//                                                               Radio(
//                                                                 value: 'yes',
//                                                                 groupValue:
//                                                                     groupValue,
//                                                                 onChanged:
//                                                                     (value) {
//                                                                   // setState(() {
//                                                                   //   this.groupValue =
//                                                                   //       value;
//                                                                   // });
//                                                                 },
//                                                               ),
//                                                               Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Insurance"),
//                                                                 style: TextStyle(
//                                                                     fontSize:
//                                                                         11,
//                                                                     color: Colors
//                                                                         .black),
//                                                               ),
//                                                               // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 50,
//                                                           ),
//                                                           ButtonTheme(
//                                                             minWidth: 200,
//                                                             child: RaisedButton(
//                                                               elevation: 2,
//                                                               textColor:
//                                                                   Colors.white,
//                                                               shape:
//                                                                   RoundedRectangleBorder(
//                                                                 borderRadius:
//                                                                     BorderRadius
//                                                                         .circular(
//                                                                             20.0),
//                                                               ),
//                                                               color: Colors
//                                                                   .black54,
//                                                               onPressed: () {},
//                                                               child: Text(
//                                                                 AppLocalizations.of(
//                                                                         context)
//                                                                     .translate(
//                                                                         "Confirm"),
//                                                               ),
//                                                               //Text('Confirm'),
//                                                             ),
//                                                           ),
//                                                           SizedBox(
//                                                             height: 30,
//                                                           ),
//                                                         ],
//                                                       )),
//                                                 );
//                                               },
//                                             );
//                                           },
//                                           child: Text(
//                                             AppLocalizations.of(context)
//                                                 .translate("Reserve"),
//                                           ),
//                                           //Text('Reserve'),
//                                         )
//                                       ],
//                                     ),
//                                   ],
//                                 ),
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
//         );
//   }
// }
