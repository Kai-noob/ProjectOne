import 'package:flutter/material.dart';

import 'widgets/onborading_body.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:OnboardingBody()
    );
  }
}