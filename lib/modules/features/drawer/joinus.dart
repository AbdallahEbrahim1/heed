import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/models/user_model.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';

class JoinUsPage extends StatefulWidget {
  @override
  _JoinUsPageState createState() => _JoinUsPageState();
}

class _JoinUsPageState extends State<JoinUsPage> {
  var formKey = GlobalKey<FormState>();
  var clinicNameController = TextEditingController();
  var representativeNumberController = TextEditingController();
  var phoneController = TextEditingController();
  var locationController = TextEditingController();

  var clinicNameFocusNode = FocusNode();
  var representativeNumberFocusNode = FocusNode();
  var phoneFocusNode = FocusNode();
  var locationFocusNode = FocusNode();
  var buttonFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(children: [
            SizedBox(
              height: 100.0,
            ),
            Card(
              margin: EdgeInsets.only(
                right: 40.0,
                left: 40.0,
                top: 100,
                bottom: 45,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        AppLocalizations.of(context).translate("join Us"),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.cyan,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: defaultFormField(
                            focusNode: clinicNameFocusNode,
                            controller: clinicNameController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(representativeNumberFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter name';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("Clinic Name"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: defaultFormField(
                            focusNode: representativeNumberFocusNode,
                            controller: representativeNumberController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(phoneFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter Number';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("Representative Number"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: defaultFormField(
                            focusNode: phoneFocusNode,
                            controller: phoneController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(locationFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter Mobile Number';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("Mobile Number"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: defaultFormField(
                            focusNode: locationFocusNode,
                            controller: locationController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(buttonFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter location';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("Location"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 250,
                            child: RaisedButton(
                              focusNode: buttonFocusNode,
                              elevation: 2,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.cyan,
                              onPressed: () {
                                setState(
                                  () {
                                    if (formKey.currentState.validate()) {
                                      var formData = FormData.fromMap({
                                        'clinic': clinicNameController.text,
                                        'name':
                                            representativeNumberController.text,
                                        'phone': phoneController.text,
                                        'address': locationController.text,
                                      });
                                      UserModel _model = UserModel();
                                      DioHelper.postData(
                                              url: 'join', data: formData)
                                          .then((value) {
                                        _model = UserModel.fromJson(value.data);
                                        if (_model.status == 1) {
                                          navigateReplacement(
                                            context,
                                            HomePage(),
                                          );
                                          snackBar(context, _model.message);
                                          print('${_model.message}');
                                        } else {
                                          if (_model.message != null) {
                                            snackBar(context, _model.message);
                                          }

                                          print('${_model.message}');
                                        }
                                      }).catchError((error) {
                                        print(error.toString());
                                      });
                                    }
                                  },
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate("join Us"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
          ]),
        ],
      ),
    );
  }
}
