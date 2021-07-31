import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/helpers/custom_suffixicon.dart';
import '../../helpers/custom_ListTile.dart';
import '../setting/setting_screen.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation:0.0,
          title: Text("Account", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: CustomSuffixIcon(svgicon: "assets/icons/log-out.svg",))
          ],
          bottom: TabBar(
         indicatorColor: kbodyColor,
         labelPadding: EdgeInsets.symmetric(vertical: 10),
            tabs: [
              Text("Posts",style: TextStyle(color: kbodyColor),),
              Text("Profile",style: TextStyle(color: kbodyColor),)
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
           
            PostScreen(),
             ProfileScreen(),
          ],
        )
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(32.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   CircleAvatar(
                     radius: 50,
                     backgroundImage: AssetImage("assets/images/profile.jpeg"),
                     backgroundColor: Colors.grey,
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical:4.0),
                         child: Text("Nay Yair Linn",style: TextStyle(color: kbodyColor),),
                       ),
                         Padding(
                             padding: const EdgeInsets.symmetric(vertical:4.0),
                           child: Text("linnayye557@gmail.com",style: TextStyle(color: kbodyColor.withOpacity(0.5)),),
                         ),
                           Padding(
                               padding: const EdgeInsets.symmetric(vertical:8.0),
                             child: Text("09957009812",style: TextStyle(color: Colors.red),),
                           ),
                           Row(
                             children: [
                             Text("Posts",style: TextStyle(fontSize: 16),),
                             Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                             child: Text("3",style: TextStyle(fontSize: 15,color: Colors.red),),
                             )
                           ],)
                     ],
                   )
                 ],
               ),
             ),
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
              title:"Facebook Page",
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

class PostScreen extends StatelessWidget {
  const PostScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
