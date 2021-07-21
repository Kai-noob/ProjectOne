import 'package:flutter/material.dart';
import 'package:flutterproject/responsive/sizeconfig.dart';
import 'package:flutterproject/screens/onboarding/components/onborading_body.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
     body:OnboardingBody()
    );
  }
}