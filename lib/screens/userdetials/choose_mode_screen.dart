import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';

class ChooseModeScreen extends StatefulWidget {
  const ChooseModeScreen({ Key? key }) : super(key: key);

  @override
  _ChooseModeScreenState createState() => _ChooseModeScreenState();
}

class _ChooseModeScreenState extends State<ChooseModeScreen> {
  bool isFarmerSelected=false;
  bool isTraderSelected=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Choose Your Mode",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    isFarmerSelected=true;
                    isTraderSelected=false;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: isFarmerSelected?BoxDecoration(
                  
                    border: Border.all(color:kPrimaryColor,width: 3.0)
                  ):BoxDecoration(
                    border:Border.all(color:Colors.transparent)
                  ),
                  child: Column(
                  children: [
                    Image.asset("assets/images/farmericonicon.png",height: 150,width: 100,),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Farmer Mode"),
                    )
                  ],
                ),
                ),
              ),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     isTraderSelected=true;
                     isFarmerSelected=false;
                   });
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   decoration: isTraderSelected?BoxDecoration(
                     border: Border.all(color:kPrimaryColor)
                   ):BoxDecoration(
                     border: Border.all(color:Colors.transparent)
                   ),
                   child: Column(
                    children: [
                      Image.asset("assets/images/farmericonicon.png",height: 150,width: 100,),
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Trader Mode"),
                      )
                    ],
                             ),
                 ),
               )
            ],
          )
        ],
      ),
      
    );
  }
}