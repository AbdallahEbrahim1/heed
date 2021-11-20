import 'package:flutter/material.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_test.dart';

class TTest extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  TestModel model;
  TTest({this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            height: 150,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                model.image,
              ),
              fit: BoxFit.fill,
            ),
          ),
          Text(
            model.name,
            style: TextStyle(fontSize: 50),
          ),
          Text(
            model.address,
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
