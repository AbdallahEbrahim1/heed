// import 'package:flutter/material.dart';
//
// class AlertDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10.0))),
//       title: Text(
//         'Patient Info',
//         style: TextStyle(color: Colors.cyan, fontSize: 25),
//       ),
//       content: Container(
//           width: 300.0,
//           height: 500.0,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 18,
//               ),
//               Container(
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.cyan)),
//                     hintText: 'Name',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(7),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.cyan)),
//                     hintText: 'Mobile Number',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Appointment:',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 120,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(7),
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.cyan)),
//                         hintText: 'Date',
//                         suffixIcon: InkWell(
//                             onTap: () {
//                               FocusScope.of(context)
//                                   .requestFocus(new FocusNode());
//                               showDatePicker(
//                                 context: context,
//                                 initialDate: DateTime.now(),
//                                 firstDate: DateTime(2020, 1),
//                                 lastDate: DateTime(2030, 12),
//                               );
//                             },
//                             child: Icon(Icons.date_range)),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Container(
//                     height: 50,
//                     width: 120,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(7),
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.cyan)),
//                         hintText: 'Time',
//                         suffixIcon: Icon(Icons.access_time),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Select payment options:',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Radio(
//                     value: 'yes',
//                     groupValue: groupValue,
//                     onChanged: (value) {
//                       // setState(() {
//                       //   this.groupValue = value;
//                       // });
//                     },
//                   ),
//                   Text(
//                     'KNet',
//                     style: TextStyle(fontSize: 15, color: Colors.black),
//                   ),
//                   Radio(
//                     value: 'no',
//                     groupValue: groupValue,
//                     onChanged: (value) {
//                       // setState(() {
//                       //   this.groupValue = value;
//                       // });
//                     },
//                   ),
//                   Text(
//                     'Cash',
//                     style: TextStyle(fontSize: 15, color: Colors.black),
//                   ),
//                   Radio(
//                     value: 'yes',
//                     groupValue: groupValue,
//                     onChanged: (value) {
//                       // setState(() {
//                       //   this.groupValue = value;
//                       // });
//                     },
//                   ),
//                   Text(
//                     'Insurance',
//                     style: TextStyle(fontSize: 11, color: Colors.black),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               ButtonTheme(
//                 minWidth: 200,
//                 child: RaisedButton(
//                   elevation: 2,
//                   textColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   color: Colors.black54,
//                   onPressed: () {},
//                   child: Text('Confirm'),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//             ],
//           )),
//     );
//   }
// }
