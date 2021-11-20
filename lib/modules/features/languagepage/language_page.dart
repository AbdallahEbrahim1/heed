import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/modules/features/ads/ads_screen.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                'assets/images/splash.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              bottom: 200,
              left: 0,
              right: 0,
              top: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Language',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, AdsPage());
                        },
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigateTo(context, AdsPage());
                        },
                        child: Text(
                          'عربي',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
