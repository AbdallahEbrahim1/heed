import 'package:flutter/material.dart';
import 'package:flutter_apppp11/language/lang.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/home/home_page.dart';
import 'package:flutter_apppp11/modules/features/languagepage/language_page.dart';
import 'package:flutter_apppp11/network/local/cache_helper.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator().then(
    (_) async {
      await CacheHelper.init();
      DioHelper.init();
      runApp(MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'EG'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }

          return supportedLocales.first;
        },
        //home: LanguagePage(),
        home: awaitShared());
    // home: Test());
  }
}

Widget awaitShared() {
  var x = CacheHelper.sharedPreferences.getBool("login");
  print("sharedddd =>  $x");
  if (x != true) {
    return LanguagePage();
  } else {
    return HomePage();
  }
}
