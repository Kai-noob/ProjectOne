import 'package:flutter/material.dart';
import '../../../helpers/custom_button.dart';
import '../../../helpers/custom_textfield.dart';
import 'email_sign_up.dart';



class EmailLogin extends StatelessWidget {
  const EmailLogin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Login",style: TextStyle(fontSize: 30),),
                SizedBox(height: 30,),
                Image.asset('assets/images/farmer.png',height: 80,),
                SizedBox(height: 40,),
                SizedBox(height: 30,),
                Customtextfield(
                  label: "Email",
                  icon:"assets/icons/email.svg"
                ),
                SizedBox(height: 40,),
                Customtextfield(
                  label: "Password",
                  icon:"assets/icons/lock.svg"
                ),
                SizedBox(height: 60,),
             CustomButton(
               label: "Create Account",
               onTap: (){},
             ),
             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't you have an account?"),
                 TextButton(
                   
                   onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmailSignUp()));
                   }, child: Text("Create",style: TextStyle(color:Colors.red,fontSize: 16),))
               ],
             )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
