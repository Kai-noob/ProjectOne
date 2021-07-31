import 'package:flutter/material.dart';

import 'responsive/orientation_layout.dart';
import 'responsive/screentype_layout.dart';
import 'testing/test_desktop_landscape.dart';
import 'testing/test_mobile_landscape.dart';
import 'testing/test_mobile_portrait.dart';
import 'testing/test_tablet_portrait.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({ Key?  key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait:TestMobilePortrait(),
        landscape:TestMobileLandscape() ,
      ), 
      tablet: OrientationLayout(
        portrait: TestTabletPortrait(),
        landscape: TestTabletLandscape(),
      ),
       desktop: OrientationLayout(
         portrait: TestDesktopPortrait(),
         landscape: TestDesktopLandscape(),
       ));
  }
}