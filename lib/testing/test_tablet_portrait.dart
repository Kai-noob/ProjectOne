import 'package:flutter/material.dart';

import 'drawer/app_drawer_mobile.dart';

class TestTabletPortrait extends StatelessWidget {
   TestTabletPortrait({ Key? key }) : super(key: key);

    final GlobalKey<ScaffoldState> _globalKey=GlobalKey();

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

class TestTabletLandscape extends StatelessWidget {

    final GlobalKey<ScaffoldState> _globalKey=GlobalKey();
   TestTabletLandscape({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _globalKey,
      drawer: AppDrawer(),
      body: Row(
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