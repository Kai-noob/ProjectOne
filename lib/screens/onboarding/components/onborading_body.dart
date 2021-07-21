import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/responsive/sizeconfig.dart';
import 'package:flutterproject/screens/auth/signup.dart';
import 'package:flutterproject/screens/home/home_screen.dart';
import 'package:flutterproject/screens/onboarding/components/onboarding_content.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  _OnboardingBodyState createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;



_storedOnboardingKey() async{
  int isViewed=0;
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  await sharedPreferences.setInt("onboarding", isViewed);
}

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> _onboardingData = [
      {
        "text":
            "Coatin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetuContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor  consectetu",
        "image": "assets/images/information.png"
      },
      {"text": "Hello", "image": "assets/images/collobration.png"},
      {"text": "Hello", "image": "assets/images/address.png"},
      {"text": "Hello", "image": "assets/images/search.png"},
    ];

    return SafeArea(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 15),
              child: Text(
                "Project ",
                style: TextStyle(fontSize: getReponsiveScreenWidth(30)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _onboardingData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                      image: _onboardingData[index]["image"].toString(),
                      content: _onboardingData[index]["text"].toString())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: currentIndex == 0
                        ? Container(
                            width: 0,
                          )
                        : TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(8)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: ktextColor))),
                              overlayColor:
                                  MaterialStateProperty.all(kPrimaryColor),
                            ),
                            child: Text(
                              "Previous",
                              style: TextStyle(
                                  color: ktextColor,
                                  fontSize: getReponsiveScreenWidth(18)),
                            ),
                            onPressed: () {
                              pageController.previousPage(
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.easeOutQuint);
                            },
                          )),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(8)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: ktextColor))),
                          overlayColor:
                              MaterialStateProperty.all(kPrimaryColor)),
                      child: Text(
                        currentIndex != 3 ? "Next" : "Get Started",
                        style: TextStyle(
                            color: ktextColor,
                            fontSize: getReponsiveScreenWidth(18)),
                      ),
                      onPressed: () {
                        if(currentIndex!=3){
                          pageController.nextPage(
                                duration: Duration(seconds: 2),
                                curve: Curves.easeOutQuint);
                        }else{
                          _storedOnboardingKey();
Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage(title: "SignUp")));
                        }}
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
