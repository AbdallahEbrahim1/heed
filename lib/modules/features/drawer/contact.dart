import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/models/user_model.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';

class ConactAction extends StatefulWidget {
  @override
  _ConactActionState createState() => _ConactActionState();
}

class _ConactActionState extends State<ConactAction> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var messageController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  var nameFocusNode = FocusNode();
  var messageFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var phoneFocusNode = FocusNode();
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
                        AppLocalizations.of(context).translate("Conact Action"),
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
                            focusNode: nameFocusNode,
                            controller: nameController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(messageFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter name';
                              }
                            },
                            label:
                                AppLocalizations.of(context).translate("Name"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: defaultFormField(
                            isMessage: true,
                            focusNode: messageFocusNode,
                            controller: messageController,
                            type: TextInputType.text,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(emailFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter your message';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("Message"),
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
                            focusNode: emailFocusNode,
                            controller: emailController,
                            type: TextInputType.name,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(phoneFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter Mobile Number';
                              }
                            },
                            label: AppLocalizations.of(context)
                                .translate("E-mail"),
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
                            type: TextInputType.phone,
                            onSubmit: (value) {
                              FocusScope.of(context)
                                  .requestFocus(buttonFocusNode);
                            },
                            validate: (String value) {
                              if (value.isEmpty) {
                                return 'please enter your phone';
                              }
                            },
                            label:
                                AppLocalizations.of(context).translate("phone"),
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
                                    // UserModel _model = UserModel(
                                    //   message: 'ghfhjghgj',
                                    // );
                                    if (formKey.currentState.validate()) {
                                      var formData = FormData.fromMap({
                                        'name': nameController.text,
                                        'message': messageController.text,
                                        'email': emailController.text,
                                        'phone': phoneController.text,
                                      });
                                      UserModel _model = UserModel();
                                      DioHelper.postData(
                                              url: 'contact', data: formData)
                                          .then((value) {
                                        _model = UserModel.fromJson(value.data);
                                        if (_model.status == 1) {
                                          snackBar(context, _model.message);
                                          navigateReplacement(
                                            context,
                                            HomePage(),
                                          );
                                        } else {
                                          if (_model.message != null) {
                                            print('2');
                                            snackBar(context, _model.message);
                                          }

                                          print('${_model.message}');
                                        }
                                      }).catchError(
                                        (error) {
                                          print(error.toString());
                                        },
                                      );
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
