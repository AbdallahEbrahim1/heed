import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/models/user_model.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/modules/features/login/login_screen.dart';
import 'package:flutter_apppp11/network/local/cache_helper.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var phoneController = TextEditingController();

  var nameFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var phoneFocusNode = FocusNode();
  var passwordFocusNode = FocusNode();
  var confirmPasswordFocusNode = FocusNode();
  var buttonFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
              child: ListView(
                children: [
                  // SizedBox(
                  //   height: 250,
                  // ),
                  SizedBox(
                    height: 45,
                  ),
                  Card(
                    margin: EdgeInsets.only(
                        right: 40, left: 40, top: 100, bottom: 45),
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
                            AppLocalizations.of(context).translate("Sign Up"),
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
                                      .requestFocus(emailFocusNode);
                                },
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'please enter your name';
                                  }
                                },
                                label: AppLocalizations.of(context)
                                    .translate("Name"),
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
                                onSubmit: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(phoneFocusNode);
                                },
                                controller: emailController,
                                type: TextInputType.emailAddress,
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'please enter your email address';
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
                                controller: phoneController,
                                focusNode: phoneFocusNode,
                                onSubmit: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(passwordFocusNode);
                                },
                                type: TextInputType.phone,
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'please enter your phone number';
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
                                controller: passwordController,
                                focusNode: passwordFocusNode,
                                type: TextInputType.visiblePassword,
                                onSubmit: (value) {
                                  FocusScope.of(context)
                                      .requestFocus(confirmPasswordFocusNode);
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
                                controller: confirmPasswordController,
                                focusNode: confirmPasswordFocusNode,
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
                                    .translate("Confirm Password"),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)
                                    .translate("By Accept"),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => #----#()));
                                },
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate("Terms & Condition"),
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // mainAxisSize: MainAxisSize.min,
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
                                      'email': emailController.text,
                                      'phone': phoneController.text,
                                      'password': passwordController.text,
                                      'password_confirmation':
                                          confirmPasswordController.text,
                                      'name': nameController.text,
                                    });
                                    UserModel _model = UserModel();
                                    DioHelper.postData(
                                            url: 'register', data: formData)
                                        .then((value) {
                                      _model = UserModel.fromJson(value.data);
                                      if (_model.status == 1) {
                                        bool login = true;
                                        CacheHelper.put(
                                                key: 'login', value: login)
                                            .then((value) {
                                          print(value);
                                        });
                                        snackBar(context, _model.message);
                                        navigateReplacement(
                                          context,
                                          HomePage(),
                                        );
                                      } else {
                                        if (_model.message != null) {
                                          snackBar(context, _model.message);
                                        }

                                        // print('${_model.message}');
                                      }
                                    }).catchError((error) {
                                      print(error.toString());
                                    });
                                  }
                                },
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context).translate("Sign Up"),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
                                  .translate("Have Account ?"),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateTo(
                                  context,
                                  Login(),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context).translate("Login"),
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
                          height: 15.0,
                        ),
                      ],
                    ),
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
