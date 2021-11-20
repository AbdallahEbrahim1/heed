import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/modules/features/signup/signup_screen.dart';

class AdsPage extends StatefulWidget {
  @override
  _AdsPageState createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            //   image: NetworkImage(
            //     "http://localhost/Sites/HeedWeb/public/upload/ads/RBTB9.adv.png",
            //     // "http://heed.linekw.net/upload/ads/RBTB9.adv.png"
            //   ),
            image: AssetImage('assets/images/adv.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RaisedButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    navigateTo(context, RegisterScreen());
                  },
                  color: Colors.grey,
                  child: Text(
                    AppLocalizations.of(context).translate("Skip Ad"),
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
