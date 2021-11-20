import 'package:flutter/material.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/modules/features/drawer/contact.dart';
import 'package:flutter_apppp11/modules/features/drawer/joinus.dart';
import 'package:flutter_apppp11/modules/features/drawer/medical.dart';
import 'package:flutter_apppp11/modules/features/drawer/settings.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/modules/features/signup/signup_screen.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void navigateReplacement(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );

Widget defaultFormField({
  bool isMessage = false,
  @required TextEditingController controller,
  @required TextInputType type,
  FocusNode focusNode,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  @required Function validate,
  @required String label,
  // @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      maxLines: (isMessage) ? 4 : 1,
      // maxLength: (isMessage) ? 4 : 1,
      focusNode: focusNode,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      // onChanged: (s) => onChange!(s),
      // onTap: () => onTap!(),
      validator: (s) => validate(s),
      decoration: InputDecoration(
        labelText: label,
        // prefixIcon: Icon(
        //   prefix,
        // ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget defaultFormFieldWithPrefix({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      focusNode: FocusNode(),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      // onChanged: (s) => onChange!(s),
      // onTap: () => onTap!(),
      validator: (s) => validate(s),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget myDrawer(context) => Drawer(
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/menu.png'),
          ),
          ListView(
            children: [
              InkWell(
                onTap: () {
                  navigateTo(context, HomePage());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Home'),
                  ),
                  leading: Icon(Icons.home_outlined),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('profile'),
                  ),
                  leading: Icon(Icons.perm_identity),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('our clinics'),
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, MedicalAdvice());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Medical Advice'),
                  ),
                  leading: Icon(Icons.perm_identity),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('My Favourites'),
                  ),
                  leading: Icon(Icons.favorite),
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, JoinUsPage());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('join Us'),
                  ),
                  //Text('join Us'),
                  leading: Icon(Icons.add_box),
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, ConactAction());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Conact Action'),
                  ),
                  //Text('join Us'),
                  leading: Icon(Icons.contacts),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('About Heed'),
                  ),
                  //Text('About Heed'),
                  leading: Icon(Icons.favorite),
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, SettingsPage());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Settings'),
                  ),
                  //Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Supports Chat'),
                  ),
                  //Text('Supports Chat'),
                  leading: Icon(Icons.chat_bubble_outline_outlined),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('History'),
                  ),
                  //Text('History'),
                  leading: Icon(Icons.history),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  navigateAndFinish(context, RegisterScreen());
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('Logout'),
                  ),
                  //Text('Logout'),
                  leading: Icon(
                    Icons.logout,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

snackBar(context, message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.cyan,
      content: Text(
        message,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
