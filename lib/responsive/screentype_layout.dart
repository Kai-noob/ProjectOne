import 'package:flutter/material.dart';
import 'baseWidget.dart';
import 'enum/device_screen_type.dart';

class ScreenTypeLayout extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({ Key? key, required this.mobile, required this.tablet, required this.desktop }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizinginfo){
      if(sizinginfo.deviceScreenType==DeviceScreenType.Tablet){
        if(tablet!=null){
          return tablet;
        }
      }
      if(sizinginfo.deviceScreenType==DeviceScreenType.Desktop){
        if(desktop!=null){
          return desktop;
        }
      }
      return mobile;
    });
    
  }
}