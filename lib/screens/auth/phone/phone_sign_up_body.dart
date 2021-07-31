import 'package:flutter/material.dart';
import '../../../helpers/custom_textfield.dart';
import '../../../helpers/custom_button.dart';
import '../../../responsive/size_config.dart';
import '../email/email_sign_up.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:30 ,),
            Image.asset("assets/images/farmer.png",height: 100,),
            SizedBox(height: 20,),
            Text("Sign In",style:TextStyle(fontSize:30)),
            SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter your phone number to  login or create account",style:TextStyle(fontSize: 2*SizeConfig.textMultiplier),),
              ),
            SizedBox(height: 30.0,),
            Customtextfield(label: "Enter Your Phone Number", icon: "assets/icons/smartphone.svg"),
            SizedBox(height:60,),
            CustomButton(
              label: "Continue",
              onTap: (){
                //Navigate
              },
            ),
            SizedBox(height: 60,),
           Text("Or",style: TextStyle(fontSize: 15),),
    
           buildFooter(context),
            buildFooterText()
          ],
        ),
    );
  }

  Padding buildFooterText() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical:15.0),
            child: Text(
            
              "By using our mobile app,you agree to our \n Terms of Use and Privacy Policy",textAlign: TextAlign.center,style:TextStyle(fontSize: 2*SizeConfig.textMultiplier)),
          );
  }

  Row buildFooter(BuildContext context) {
    return Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             FloatingActionButton(
               elevation: 0.0,
               backgroundColor: Colors.grey.shade200,
               onPressed: (){
                 Navigator.of(context).push((MaterialPageRoute(builder: (context)=>EmailSignUp())));
               },
             child: Icon(Icons.email,color: Colors.red,size:30),
             ),
             FloatingActionButton(
               elevation: 0.0,
               backgroundColor: Colors.grey.shade200,
               onPressed: (){},
             child: Icon(Icons.facebook,color: Colors.blue,size: 30,),
             ),
              
           ],
         );
  }
}

