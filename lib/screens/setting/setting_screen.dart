import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../helpers/custom_ListTile.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",style: TextStyle(color: Colors.white),),
        elevation: 0.0,
        backgroundColor: kbodyColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
            CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/share.svg",
              title:"Dark Mode",
            ),
              CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/translation.svg",
              title:"Language",
            ),
              CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/facebook.svg",
              title:"Share Your App",
            ),
            CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/share.svg",
              title:"Share Your App",
            ),
            CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/privacy.svg",
              title:"Privacy",
            ),
            CustomListTile(
                  onTap: (){},
              svgicon: "assets/icons/info.svg",
              title:"About",
            ),
          
        ],
      ),
    );
  }
}