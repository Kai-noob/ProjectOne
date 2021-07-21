import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/screens/auth/signIn/login.dart';
import 'package:flutterproject/screens/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'screens/home/home_screen.dart';
import 'screens/onboarding/onboard_screen.dart';
int? isViewed;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  isViewed=sharedPreferences.getInt("onboarding");
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:kPrimaryColor
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1:TextStyle(color: ktextColor),
          bodyText2: TextStyle(color: ktextColor)
        )
      ),
      home: isViewed!=0?OnboardScreen():LoginPage( title: "Login"),
    );
  }
}


