import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/models/user_model.dart';
import 'package:flutter_apppp11/modules/features/login/login_screen.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Text(
                    '   Forgot Password',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'We just need your register e-mail ID to send reset \n link',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: defaultFormFieldWithPrefix(
                  prefix: Icons.mail,
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'please enter your email address';
                    }
                  },
                  label: AppLocalizations.of(context).translate("E-mail"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonTheme(
                    minWidth: 200,
                    child: RaisedButton(
                      elevation: 2,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.black38,
                      onPressed: () {
                        setState(
                          () {
                            UserModel _model = UserModel();
                            if (formKey.currentState.validate()) {
                              if (_model.message != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${_model.message}')),
                                );
                              }
                            }
                          },
                        );
                        var formData = FormData.fromMap({
                          'email': emailController.text,
                        });
                        UserModel _model = UserModel();
                        DioHelper.postData(
                                url: 'forget_password', data: formData)
                            .then((value) {
                          _model = UserModel.fromJson(value.data);
                          // if (_model.status == 1) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(content: Text('${_model.message.}')),
                          //   );
                          //   // navigateReplacement(
                          //   //   context,
                          //   //   HomePage(),
                          //   // );
                          // } else {
                          //   if (_model.message != null) {
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       SnackBar(content: Text('${_model.message}')),
                          //     );
                          //   }
                          //
                          //   print('XXXXxxXXXX${_model.message}');
                          // }
                          if (_model.message != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('${_model.message}')),
                            );
                          }
                        }).catchError((error) {
                          print(error.toString());
                        });
                      },
                      child: Text('Reset Password'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have Account ? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Login',
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
    );
  }
}
