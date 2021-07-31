
import 'package:flutter/material.dart';
import 'custom_suffixicon.dart';

class Customtextfield extends StatelessWidget {

  final String label;
  final String icon;
  const Customtextfield({
    Key? key, required this.label, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        CustomSuffixIcon(svgicon: icon),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: label,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.symmetric(horizontal:20)
            ),
          ),
        ),
      ],
    );
  }
}