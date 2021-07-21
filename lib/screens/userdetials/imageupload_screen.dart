import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';

class ImageuploadScreen extends StatelessWidget {
  const ImageuploadScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 100,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
           Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: <BoxShadow>[
      BoxShadow(
      color: Colors.grey.shade200,
      offset: Offset(2, 4),
      blurRadius: 5,
      spreadRadius: 2)
      ],
      gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xfffbb448), kPrimaryColor])),
      child: Text(
      'Upload Photo',
      style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      ),
          ],
        ),
    );
  }
}