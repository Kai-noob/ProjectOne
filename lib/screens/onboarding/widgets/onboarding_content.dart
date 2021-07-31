import 'package:flutter/material.dart';
import '../../../responsive/size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({ Key? key, required this.image, required this.content }) : super(key: key);
final String image;
final String content;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image,fit:BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(top:12.0,left:12),
            child: Text(
              content,style:TextStyle(fontSize: 3*SizeConfig.textMultiplier,height: 2.0,),textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}