import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_ttest.dart';

class Test extends StatelessWidget {
  List list = [
    TestModel(address: 'sss', name: 'sjjjss', image: 'assets/images/11.png'),
    TestModel(name: 'msms', address: 'dadad', image: 'assets/images/15.png'),
    TestModel(
        name: 'kkkkkms', address: 'ddddadad', image: 'assets/images/13.png'),
    TestModel(
        name: 'ssssms', address: 'aaadadad', image: 'assets/images/12.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              navigateTo(context, TTest(model: list[index]));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              height: 150,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  '${list[index].image}',
                ),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}

class TestModel {
  String name;
  String address;
  String image;
  TestModel({this.name, this.address, this.image});
}
