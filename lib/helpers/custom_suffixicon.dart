import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/constants.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgicon;
  const CustomSuffixIcon({ Key? key, required this.svgicon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 10),
      child: SvgPicture.asset(svgicon,height: 25,),
    );
  }
}

class CustomSmallIcon extends StatelessWidget {
  final String svgicon;
  const CustomSmallIcon({ Key? key, required this.svgicon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: SvgPicture.asset(svgicon,height: 15,),
    );
  }
}



class CustomCatIcon extends StatelessWidget {

  final String svgicon;

  const CustomCatIcon({ Key? key, required this.svgicon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgicon,height: 25
    );
  }
}


class CustomNavIcon extends StatelessWidget {

  final String svgicon;

  const CustomNavIcon({ Key? key, required this.svgicon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgicon,height: 24,color: kbodyColor,
    );
  }
}