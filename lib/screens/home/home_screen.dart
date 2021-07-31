import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../helpers/custom_suffixicon.dart';
import '../blog/blog_screen.dart';
import '../feed/new_feed_screen.dart';
import '../useraccount/useraccount.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex=0;
 final List<Widget> _pages=[
   NewFeed(),
   BlogScreen(),
   UserAccount()
 ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    selectedLabelStyle: TextStyle(color: kbodyColor),
    selectedItemColor: kbodyColor,
        unselectedItemColor:kbodyColor.withOpacity(0.8),
    onTap: (value){
      setState(() {
        _currentIndex=value;
      });
    },
    items: [
        
           BottomNavigationBarItem(icon: CustomNavIcon(svgicon: "assets/icons/home.svg"),label:"Home"),
             BottomNavigationBarItem(icon: CustomNavIcon(svgicon: "assets/icons/agriculture.svg",),label:"Blogs"),
           BottomNavigationBarItem(icon: CustomNavIcon(svgicon: "assets/icons/user.svg"),label:"Account"),

    ],
  ),
);
  }
}
