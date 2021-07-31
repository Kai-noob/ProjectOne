import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproject/screens/home/home_screen.dart';
import 'constants/constants.dart';
import 'responsive/size_config.dart';
import 'screens/auth/email/email_sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';


int? isViewed;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  isViewed=sharedPreferences.getInt("onboarding");
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown
  ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return OrientationBuilder(builder: (context,orientation){
       SizeConfig().init(constraints, orientation);
       return   MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "CustomFont",
          textTheme: TextTheme(
            bodyText1:TextStyle(color: ktextColor),
            bodyText2: TextStyle(color: ktextColor)
          )
        ),
        // home: isViewed!=0?OnboardScreen():LoginPage( title: "Login"),
        home:HomeScreen()
      );
      });
      },
    );
  }
}


