import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/components/slider.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_manager.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_model.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_page.dart';

class GridPage extends StatefulWidget {
  final String model;
  final String modelAddress;
  final String modelName;

  GridPage({this.model, this.modelAddress, this.modelName});

  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  String groupValue;
  bool list = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  onPressed: () {}),
            ],
          ),
        ),
        drawer: myDrawer(context),
        body: StreamBuilder<ClinicModel>(
            stream: locator<ClinicManager>().home$,
            builder: (context, AsyncSnapshot<ClinicModel> clinicSnapshotTwo) {
              return Column(
                children: [
                  HeedSlider(
                    images: clinicSnapshotTwo.data.data.slider,
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  child: Image.network(
                                    widget.model,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                    left: 15,
                                    right: 15,
                                    bottom: 15,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.modelName,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        widget.modelAddress,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: AppBar(
                              backgroundColor: Colors.white54,
                              bottom: TabBar(
                                tabs: [
                                  Tab(
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate("Services"),
                                      style: TextStyle(
                                          color: Colors.cyan, fontSize: 16),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate("info"),
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                ListView(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Divider(
                                            color: Colors.black54,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  navigateTo(
                                                      context, ClinicPage());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Image(
                                                        height: 10,
                                                        image: AssetImage(
                                                            'assets/images/back3@2x.png')),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)
                                                          .translate(
                                                        "Aliergy & immunology",
                                                      ),
                                                      style: TextStyle(
                                                        color: Colors.cyan,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 95,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    list = !list;
                                                  });
                                                },
                                                child: list
                                                    ? Image.asset(
                                                        "assets/images/menu2.png",
                                                        height: 20.0,
                                                        width: 20.0,
                                                      )
                                                    : Image.asset(
                                                        "assets/images/menu3.png",
                                                        height: 20.0,
                                                        width: 20.0,
                                                      ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          list
                                              ? GridView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent: 200,
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 80.0,
                                                    mainAxisSpacing: 30.0,
                                                  ),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.network(
                                                          clinicSnapshotTwo
                                                              .data
                                                              .data
                                                              .clinic
                                                              .services[index]
                                                              .doctors[index]
                                                              .image,
                                                          height: 80,
                                                          width: 80,
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          clinicSnapshotTwo
                                                              .data
                                                              .data
                                                              .clinic
                                                              .services[index]
                                                              .doctors[index]
                                                              .name,
                                                          // AppLocalizations.of(context)
                                                          //     .translate(
                                                          //         "Direct Reservation"),
                                                          style: TextStyle(
                                                            color: Colors.cyan,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        RaisedButton(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              20.0,
                                                            ),
                                                          ),
                                                          color: Colors.cyan,
                                                          onPressed: () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return AlertDialog(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .all(
                                                                      Radius
                                                                          .circular(
                                                                        10.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  title: Text(
                                                                    AppLocalizations.of(
                                                                            context)
                                                                        .translate(
                                                                      "Patient Info",
                                                                    ),
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .cyan,
                                                                      fontSize:
                                                                          25,
                                                                    ),
                                                                  ),
                                                                  // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
                                                                  content:
                                                                      Container(
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              500.0,
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(
                                                                                height: 18,
                                                                              ),
                                                                              Container(
                                                                                height: 50,
                                                                                width: 300,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(7),
                                                                                ),
                                                                                child: TextField(
                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.cyan,
                                                                                      ),
                                                                                    ),
                                                                                    hintText: AppLocalizations.of(context).translate(
                                                                                      "Name",
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              Container(
                                                                                height: 50,
                                                                                width: 300,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(
                                                                                    7,
                                                                                  ),
                                                                                ),
                                                                                child: TextField(
                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                    hintText: AppLocalizations.of(context).translate(
                                                                                      "Mobile Number",
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 18,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    AppLocalizations.of(context).translate(
                                                                                      "Appointment:",
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      fontSize: 20,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 15,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Container(
                                                                                    height: 50,
                                                                                    width: 120,
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(
                                                                                        7,
                                                                                      ),
                                                                                    ),
                                                                                    child: TextField(
                                                                                      decoration: InputDecoration(
                                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                        hintText: AppLocalizations.of(context).translate(
                                                                                          "Date",
                                                                                        ),
                                                                                        suffixIcon: InkWell(
                                                                                          onTap: () {
                                                                                            FocusScope.of(context).requestFocus(new FocusNode());
                                                                                            showDatePicker(
                                                                                              context: context,
                                                                                              initialDate: DateTime.now(),
                                                                                              firstDate: DateTime(2020, 1),
                                                                                              lastDate: DateTime(2030, 12),
                                                                                            );
                                                                                          },
                                                                                          child: Icon(Icons.date_range),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 20,
                                                                                  ),
                                                                                  Container(
                                                                                    height: 50,
                                                                                    width: 120,
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(
                                                                                        7,
                                                                                      ),
                                                                                    ),
                                                                                    child: TextField(
                                                                                      decoration: InputDecoration(
                                                                                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                        hintText: AppLocalizations.of(context).translate(
                                                                                          "Time",
                                                                                        ),
                                                                                        suffixIcon: Icon(
                                                                                          Icons.access_time,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 25,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    AppLocalizations.of(context).translate(
                                                                                      "Select payment options:",
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      fontSize: 15,
                                                                                    ),
                                                                                  ),
                                                                                  // Text('Select payment options:',style: TextStyle(fontSize: 15),),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Radio(
                                                                                    value: 'yes',
                                                                                    groupValue: groupValue,
                                                                                    onChanged: (value) {
                                                                                      // setState(() {
                                                                                      //   this.groupValue =
                                                                                      //       value;
                                                                                      // });
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    AppLocalizations.of(context).translate(
                                                                                      "KNet",
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      fontSize: 15,
                                                                                      color: Colors.black,
                                                                                    ),
                                                                                  ),
                                                                                  //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),

                                                                                  Radio(
                                                                                    value: 'no',
                                                                                    groupValue: groupValue,
                                                                                    onChanged: (value) {
                                                                                      //   setState(() {
                                                                                      //     this.groupValue =
                                                                                      //         value;
                                                                                      //   });
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    AppLocalizations.of(context).translate(
                                                                                      "Cash",
                                                                                    ),
                                                                                    style: TextStyle(
                                                                                      fontSize: 15,
                                                                                      color: Colors.black,
                                                                                    ),
                                                                                  ),
                                                                                  // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
                                                                                  Radio(
                                                                                    value: 'yes',
                                                                                    groupValue: groupValue,
                                                                                    onChanged: (value) {
                                                                                      // setState(() {
                                                                                      //   this.groupValue =
                                                                                      //       value;
                                                                                      // });
                                                                                    },
                                                                                  ),
                                                                                  Text(
                                                                                    AppLocalizations.of(context).translate("Insurance"),
                                                                                    style: TextStyle(
                                                                                      fontSize: 11,
                                                                                      color: Colors.black,
                                                                                    ),
                                                                                  ),
                                                                                  // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
                                                                                ],
                                                                              ),
                                                                              SizedBox(
                                                                                height: 50,
                                                                              ),
                                                                              ButtonTheme(
                                                                                minWidth: 200,
                                                                                child: RaisedButton(
                                                                                  elevation: 2,
                                                                                  textColor: Colors.white,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      20.0,
                                                                                    ),
                                                                                  ),
                                                                                  color: Colors.black54,
                                                                                  onPressed: () {},
                                                                                  child: Text(
                                                                                    AppLocalizations.of(context).translate(
                                                                                      "Confirm",
                                                                                    ),
                                                                                  ),
                                                                                  //Text('Confirm'),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 30,
                                                                              ),
                                                                            ],
                                                                          )),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    "Reserve"),
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  },
                                                  itemCount: clinicSnapshotTwo
                                                      .data
                                                      .data
                                                      .clinic
                                                      .services[0]
                                                      .doctors
                                                      .length,
                                                )
                                              : ListView.separated(
                                                  separatorBuilder:
                                                      (context, index) =>
                                                          SizedBox(
                                                    height: 5,
                                                  ),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Container(
                                                      height: 100,
                                                      width: 200,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(20.0),
                                                            child:
                                                                Image.network(
                                                              clinicSnapshotTwo
                                                                  .data
                                                                  .data
                                                                  .clinic
                                                                  .services[
                                                                      index]
                                                                  .doctors[
                                                                      index]
                                                                  .image,
                                                              width: 50,
                                                              height: 50,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 15,
                                                          ),
                                                          Text(
                                                            clinicSnapshotTwo
                                                                .data
                                                                .data
                                                                .clinic
                                                                .services[index]
                                                                .doctors[index]
                                                                .name,
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 100,
                                                          ),
                                                          RaisedButton(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                20.0,
                                                              ),
                                                            ),
                                                            color: Colors.cyan,
                                                            onPressed: () {
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .all(
                                                                        Radius
                                                                            .circular(
                                                                          10.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    title: Text(
                                                                      AppLocalizations.of(
                                                                              context)
                                                                          .translate(
                                                                        "Patient Info",
                                                                      ),
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .cyan,
                                                                        fontSize:
                                                                            25,
                                                                      ),
                                                                    ),
                                                                    // Text('Patient Info',style: TextStyle(color: Colors.cyan,fontSize: 25),),
                                                                    content: Container(
                                                                        width: 300.0,
                                                                        height: 500.0,
                                                                        child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            SizedBox(
                                                                              height: 18,
                                                                            ),
                                                                            Container(
                                                                              height: 50,
                                                                              width: 300,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(7),
                                                                              ),
                                                                              child: TextField(
                                                                                decoration: InputDecoration(
                                                                                  border: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.cyan,
                                                                                    ),
                                                                                  ),
                                                                                  hintText: AppLocalizations.of(context).translate(
                                                                                    "Name",
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 10,
                                                                            ),
                                                                            Container(
                                                                              height: 50,
                                                                              width: 300,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(
                                                                                  7,
                                                                                ),
                                                                              ),
                                                                              child: TextField(
                                                                                decoration: InputDecoration(
                                                                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                  hintText: AppLocalizations.of(context).translate(
                                                                                    "Mobile Number",
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 18,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  AppLocalizations.of(context).translate(
                                                                                    "Appointment:",
                                                                                  ),
                                                                                  style: TextStyle(
                                                                                    fontSize: 20,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 15,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  width: 120,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      7,
                                                                                    ),
                                                                                  ),
                                                                                  child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                      hintText: AppLocalizations.of(context).translate(
                                                                                        "Date",
                                                                                      ),
                                                                                      suffixIcon: InkWell(
                                                                                        onTap: () {
                                                                                          FocusScope.of(context).requestFocus(new FocusNode());
                                                                                          showDatePicker(
                                                                                            context: context,
                                                                                            initialDate: DateTime.now(),
                                                                                            firstDate: DateTime(2020, 1),
                                                                                            lastDate: DateTime(2030, 12),
                                                                                          );
                                                                                        },
                                                                                        child: Icon(Icons.date_range),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 20,
                                                                                ),
                                                                                Container(
                                                                                  height: 50,
                                                                                  width: 120,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      7,
                                                                                    ),
                                                                                  ),
                                                                                  child: TextField(
                                                                                    decoration: InputDecoration(
                                                                                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
                                                                                      hintText: AppLocalizations.of(context).translate(
                                                                                        "Time",
                                                                                      ),
                                                                                      suffixIcon: Icon(
                                                                                        Icons.access_time,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 25,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  AppLocalizations.of(context).translate(
                                                                                    "Select payment options:",
                                                                                  ),
                                                                                  style: TextStyle(
                                                                                    fontSize: 15,
                                                                                  ),
                                                                                ),
                                                                                // Text('Select payment options:',style: TextStyle(fontSize: 15),),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 20,
                                                                            ),
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Radio(
                                                                                  value: 'yes',
                                                                                  groupValue: groupValue,
                                                                                  onChanged: (value) {
                                                                                    // setState(() {
                                                                                    //   this.groupValue =
                                                                                    //       value;
                                                                                    // });
                                                                                  },
                                                                                ),
                                                                                Text(
                                                                                  AppLocalizations.of(context).translate(
                                                                                    "KNet",
                                                                                  ),
                                                                                  style: TextStyle(
                                                                                    fontSize: 15,
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                ),
                                                                                //Text('KNet',style: TextStyle(fontSize: 15,color:Colors.black),),

                                                                                Radio(
                                                                                  value: 'no',
                                                                                  groupValue: groupValue,
                                                                                  onChanged: (value) {
                                                                                    //   setState(() {
                                                                                    //     this.groupValue =
                                                                                    //         value;
                                                                                    //   });
                                                                                  },
                                                                                ),
                                                                                Text(
                                                                                  AppLocalizations.of(context).translate(
                                                                                    "Cash",
                                                                                  ),
                                                                                  style: TextStyle(
                                                                                    fontSize: 15,
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                ),
                                                                                // Text('Cash',style: TextStyle(fontSize: 15,color:Colors.black),),
                                                                                Radio(
                                                                                  value: 'yes',
                                                                                  groupValue: groupValue,
                                                                                  onChanged: (value) {
                                                                                    // setState(() {
                                                                                    //   this.groupValue =
                                                                                    //       value;
                                                                                    // });
                                                                                  },
                                                                                ),
                                                                                Text(
                                                                                  AppLocalizations.of(context).translate("Insurance"),
                                                                                  style: TextStyle(
                                                                                    fontSize: 11,
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                ),
                                                                                // Text('Insurance',style: TextStyle(fontSize: 11,color:Colors.black),),
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              height: 50,
                                                                            ),
                                                                            ButtonTheme(
                                                                              minWidth: 200,
                                                                              child: RaisedButton(
                                                                                elevation: 2,
                                                                                textColor: Colors.white,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(
                                                                                    20.0,
                                                                                  ),
                                                                                ),
                                                                                color: Colors.black54,
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  AppLocalizations.of(context).translate(
                                                                                    "Confirm",
                                                                                  ),
                                                                                ),
                                                                                //Text('Confirm'),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 30,
                                                                            ),
                                                                          ],
                                                                        )),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                            child: Text(
                                                              AppLocalizations.of(
                                                                      context)
                                                                  .translate(
                                                                      "Reserve"),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  itemCount: clinicSnapshotTwo
                                                      .data
                                                      .data
                                                      .clinic
                                                      .services[0]
                                                      .doctors
                                                      .length,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Divider(
                                            color: Colors.black54,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        "Clinic location on map:"),
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              Icon(
                                                Icons.map,
                                                size: 40,
                                              )
                                            ],
                                          ),
                                          Divider(
                                            color: Colors.black54,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate(
                                                    "Insurance Companies:"),
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          GridView.builder(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 200,
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 80.0,
                                              mainAxisSpacing: 50.0,
                                            ),
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: clinicSnapshotTwo
                                                    .data
                                                    .data
                                                    .clinic
                                                    .incuranceCompanies
                                                    ?.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              return Image.network(
                                                  clinicSnapshotTwo
                                                      .data
                                                      .data
                                                      .clinic
                                                      .incuranceCompanies[index]
                                                      .image);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
