
	import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/screens/auth/signup.dart';

import 'package:flutterproject/screens/home/home_screen.dart';

import 'components/customcontainer.dart';

	
	class LoginPage extends StatefulWidget {
	LoginPage({  key, required this.title}) : super(key: key);
	
	final String title;
	
	@override
	_LoginPageState createState() => _LoginPageState();
	}
	
	class _LoginPageState extends State<LoginPage> {
	
	
	Widget _entryField(String title, {bool isPassword = false}) {
	return Container(

	  child: Column(
	  crossAxisAlignment: CrossAxisAlignment.start,
	  children: <Widget>[
	  Text(
	  title,
	  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
	  ),
    SizedBox(height: MediaQuery.of(context).size.height*0.02),
	  TextField(
	  obscureText: isPassword,
	  decoration: InputDecoration(
	  border: InputBorder.none,
	  fillColor: Color(0xfff3f3f4),
	  filled: true))
	  ],
	  ),
	);
	}
	
	Widget _submitButton() {
	return Container(
	width: MediaQuery.of(context).size.width,
	padding: EdgeInsets.symmetric(vertical: 15),
	alignment: Alignment.center,
	decoration: BoxDecoration(
	borderRadius: BorderRadius.all(Radius.circular(5)),
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
	'Login',
	style: TextStyle(fontSize: 20, color: Colors.white),
	),
	);
	}
	

	
		
	Widget _createAccountLabel() {
	return InkWell(
	onTap: () {
	Navigator.push(
	context, MaterialPageRoute(builder: (context) => SignUpPage(title: "SignUP")));
	},
	child: Container(
	margin: EdgeInsets.symmetric(vertical: 20),
	padding: EdgeInsets.all(15),
	alignment: Alignment.bottomCenter,
	child: Row(
	mainAxisAlignment: MainAxisAlignment.center,
	children: <Widget>[
	Text(
	'Don\'t have an account ?',
	style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
	),
	SizedBox(
	width: 10,
	),
	Text(
	'Register',
	style: TextStyle(
	color: kPrimaryColor,
	fontSize: 13,
	fontWeight: FontWeight.w600),
	),
	],
	),
	),
	);
	}

  	Widget _title() {
	return RichText(
	textAlign: TextAlign.center,
	text: TextSpan(
	children: [
	TextSpan(
	text: 'Log',
	style: TextStyle(color: Colors.black, fontSize: 30),
	),
	TextSpan(
	text:' In',
	style: TextStyle(color: kPrimaryColor, fontSize: 30),
	),
	]),
	);
	}
	

	
	Widget _emailPasswordWidget() {
	return Column(
	children: <Widget>[
	_entryField("Email"),
  SizedBox(height:MediaQuery.of(context).size.height*0.02,),
	_entryField("Password", isPassword: true),
	],
	);
	}
	
	@override
	Widget build(BuildContext context) {
	final height = MediaQuery.of(context).size.height;
	return Scaffold(
	body: Container(
	height: height,
	child: Stack(
	children: <Widget>[
	// Positioned(
	// top: -height * .15,
	// right: -MediaQuery.of(context).size.width * .4,
	// child: BezierContainer()),
	Container(
	padding: EdgeInsets.symmetric(horizontal: 20),
	child: SingleChildScrollView(
	child: Column(
	crossAxisAlignment: CrossAxisAlignment.center,
	mainAxisAlignment: MainAxisAlignment.center,
	children: <Widget>[
	SizedBox(height: height * .2),
	_title(),
	SizedBox(
	height: 50,
	),
	SizedBox(height: 50),
	_emailPasswordWidget(),
	SizedBox(height: 20),
	_submitButton(),
	Container(
	padding: EdgeInsets.symmetric(vertical: 10),
	alignment: Alignment.centerRight,
	child: Text('Forgot Password ?',
	style: TextStyle(
	fontSize: 14, fontWeight: FontWeight.w500)),
	),
	SizedBox(height: height * .055),
	_createAccountLabel(),
	],
	),
	),
	),
	],
	),
	));
	}
	}
