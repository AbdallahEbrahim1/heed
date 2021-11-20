import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_manager.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_model.dart';
import 'package:flutter_apppp11/modules/features/clinics/tabbarr.dart';

class ClinicPage extends StatefulWidget {
  final String model;
  final String modelAddress;
  final String modelName;

  ClinicPage({this.model, this.modelAddress, this.modelName});

  @override
  _ClinicPageState createState() => _ClinicPageState();
}

class _ClinicPageState extends State<ClinicPage> {
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
                onPressed: () {},
              ),
            ],
          ),
        ),
        drawer: myDrawer(context),
        body: StreamBuilder<ClinicModel>(
            stream: locator<ClinicManager>().home$,
            builder: (context, AsyncSnapshot<ClinicModel> clinicSnapshot) {
              return Column(
                children: [
                  Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.modelName,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: AppBar(
                      backgroundColor: Colors.white60,
                      bottom: TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate("Services"),
                              style:
                                  TextStyle(color: Colors.cyan, fontSize: 16),
                            ),
                          ),
                          Tab(
                            child: Text(
                              AppLocalizations.of(context).translate("info"),
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
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
                              // height: 350,
                              color: Colors.white,
                              child: clinicSnapshot
                                      .data.data.clinic.services.isNotEmpty
                                  ? GridView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: clinicSnapshot.data.data.clinic
                                              .services?.length ??
                                          0,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: 200,
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 80.0,
                                        mainAxisSpacing: 50.0,
                                      ),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            navigateTo(
                                              context,
                                              GridPage(
                                                model: widget.model,
                                                modelName: widget.modelName,
                                                modelAddress:
                                                    widget.modelAddress,
                                                // model: clinicSnapshot
                                                //     .data.data.clinic.image,
                                                // modelAddress: clinicSnapshot
                                                //     .data.data.clinic.address,
                                                // modelName: clinicSnapshot
                                                //     .data.data.clinic.name,
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.network(
                                                clinicSnapshot.data.data.clinic
                                                    .services[index].image,
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                clinicSnapshot.data.data.clinic
                                                    .services[index].name,
                                                style: TextStyle(
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    )
                                  : Container(),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        AppLocalizations.of(context).translate(
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
                                        .translate("Insurance Companies:"),
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
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: clinicSnapshot.data.data.clinic
                                            .incuranceCompanies?.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      return Image.network(clinicSnapshot
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
              );
            }),
      ),
    );
  }
}
