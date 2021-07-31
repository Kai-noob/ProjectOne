import 'package:flutter/material.dart';
import 'drawer/app_drawer_mobile.dart';


class TestMobilePortrait extends StatelessWidget {

  final GlobalKey<ScaffoldState> _globalKey=GlobalKey();
  
   TestMobilePortrait({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16),
          child:IconButton(
            onPressed: (){
              _globalKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu,size:30),
          ),
          )
        ],
      ),
    );
  }
}