import 'package:flutter/material.dart';
import 'email_login.dart';
import '../../home/home_screen.dart';
import '../../../helpers/custom_button.dart';
import '../../../helpers/custom_textfield.dart';


class EmailSignUp extends StatelessWidget {
  const EmailSignUp({ Key? key }) : super(key: key);

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
                Text("Sign Up",style: TextStyle(fontSize: 30),),
                SizedBox(height: 30,),
                Image.asset('assets/images/farmer.png',height: 80,),
                SizedBox(height: 40,),
                Customtextfield(
                  label: "Username",
                  icon:"assets/icons/user.svg"
                ),
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
                SizedBox(height: 40,),
                Customtextfield(
                  label: "Comfirm Password",
                  icon:"assets/icons/lock.svg"
                ),
                SizedBox(height: 30,),
             CustomButton(
               label: "Create Account",
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
                //  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
               },
             ),
             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Do you have an account?'),
                 TextButton(
                   
                   onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>EmailLogin()));
                   }, child: Text("Login",style: TextStyle(color:Colors.red,fontSize: 16),))
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
