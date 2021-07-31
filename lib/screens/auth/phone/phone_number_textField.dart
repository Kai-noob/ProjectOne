import 'package:flutter/material.dart';

import '../../../responsive/size_config.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:1,
          child: Center(child: Text("+95",style: TextStyle(fontSize: 20),)),
        ),
        Expanded(
          flex: 3,
          child: TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
            border:InputBorder.none,
            hintText: "Enter Your Phone Number",
            hintStyle: TextStyle(fontSize: 2*SizeConfig.textMultiplier)
            ),
          ),
        )
      ],
    );
  }
}