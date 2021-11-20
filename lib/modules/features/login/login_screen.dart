import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/models/user_model.dart';
import 'package:flutter_apppp11/modules/features/drawer/joinus.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/modules/features/login/forgot_screen.dart';
import 'package:flutter_apppp11/modules/features/signup/signup_screen.dart';
import 'package:flutter_apppp11/network/local/cache_helper.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var emailFocusNode = FocusNode();
  var passwordFocusNode = FocusNode();
  var buttonFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: ListView(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: 50.0,
                      left: 50.0,
                      top: 100.0,
                      bottom: 70.0,
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            AppLocalizations.of(context).translate(
                              "Login",
                            ),
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.cyan,
                            ),
                          ),
                          SizedBox(
                            height: 15,
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
                                controller: emailController,
                                focusNode: emailFocusNode,
                                onSubmit: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(passwordFocusNode);
                                },
                                type: TextInputType.emailAddress,
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'please enter your email address';
                                  }
                                },
                                label: AppLocalizations.of(context)
                                    .translate("E-mail/phone Number"),
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
                                controller: passwordController,
                                focusNode: passwordFocusNode,
                                type: TextInputType.visiblePassword,
                                onSubmit: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(buttonFocusNode);
                                },
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'password is too short';
                                  }
                                },
                                label: AppLocalizations.of(context)
                                    .translate("Password"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  navigateTo(
                                    context,
                                    ForgotScreen(),
                                  );
                                },
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate("Forgot Password?"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
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
                                  color: Colors.black38,
                                  onPressed: () {
                                    setState(
                                      () {
                                        if (formKey.currentState.validate()) {
                                          var formData = FormData.fromMap({
                                            'email_phone': emailController.text,
                                            'password': passwordController.text,
                                          });
                                          UserModel _model = UserModel();
                                          DioHelper.postData(
                                            url: 'login',
                                            data: formData,
                                          ).then((value) {
                                            _model =
                                                UserModel.fromJson(value.data);
                                            if (_model.status == 1) {
                                              snackBar(context, _model.message);
                                              navigateReplacement(
                                                context,
                                                HomePage(),
                                              );
                                              bool login = true;
                                              CacheHelper.put(
                                                      key: 'login',
                                                      value: login)
                                                  .then((value) {
                                                print(value);
                                              });
                                            } else {
                                              if (_model.message != null) {
                                                snackBar(
                                                    context, _model.message);
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
                                        .translate("Login"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate('Don\'t have an account?'),
                                    // 'Don\'t have an account? ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      navigateTo(context, RegisterScreen());
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate("Register"),
                                      style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)
                                .translate("if Clinic:"),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          ButtonTheme(
                            minWidth: 120,
                            child: RaisedButton(
                              elevation: 2,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.black38,
                              onPressed: () {
                                navigateTo(
                                  context,
                                  JoinUsPage(),
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)
                                        .translate("join Us"),
                                  ),
                                  Image(
                                      height: 40,
                                      image: AssetImage(
                                          'assets/images/Cardiology@3x.png'))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
