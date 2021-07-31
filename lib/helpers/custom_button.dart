import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  const CustomButton({
    Key? key, required this.onTap, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: MediaQuery.of(context).size.height*0.069,
      child: ElevatedButton(
        style: ButtonStyle(
     
         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          backgroundColor: MaterialStateProperty.all(Color(0xff292C31))
        ),
        onPressed: onTap, 
        child: Text(label,style: TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
}
