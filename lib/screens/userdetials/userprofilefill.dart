import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/responsive/sizeconfig.dart';
import 'package:flutterproject/screens/userdetials/choose_mode_screen.dart';
import 'package:flutterproject/screens/userdetials/imageupload_screen.dart';
import 'package:flutterproject/screens/userdetials/userphoneandaddress.dart';


class UserProfileFill extends StatefulWidget {
  const UserProfileFill({ Key? key }) : super(key: key);

  @override
  _UserProfileFillState createState() => _UserProfileFillState();
}

class _UserProfileFillState extends State<UserProfileFill> {

   PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
    List<Widget> _widgets=[
    ImageuploadScreen(),
    UserPhoneandAddress(),
    ChooseModeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
              controller: pageController,
              itemCount: _widgets.length,
              itemBuilder: (context,index)=> _widgets[index]),
          ),
              Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                                  child: Text(
                                    "Continous",
                                    style: TextStyle(
                                        color: ktextColor,
                                        fontSize: 18),
                                  ),
                                  onPressed: () {
                                    pageController.nextPage(
                                        duration: Duration(milliseconds: 1000),
                                        curve: Curves.easeOutQuint);
                                  },
                                ),
            ),
          ],
        )
        ],
      ),
  
    );
  }
}