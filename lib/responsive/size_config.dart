
import 'package:flutter/material.dart';


class SizeConfig{
   static double _screenWidth=0;
  static double  _screenHeight=0;
  static double _blockSizeHorizontal=0;
  static double _blockSizeVertical=0;

  static double textMultiplier=0;
  static double imageSizeMultiplier=0;
  static double heightMultiplier=0;


  void init (BoxConstraints constraints,Orientation orientation){
    if(orientation==Orientation.portrait){
      _screenHeight=constraints.maxHeight;
      _screenWidth=constraints.maxWidth;
    }else{
      _screenHeight=constraints.maxWidth;
      _screenWidth=constraints.maxHeight;
    }
    _blockSizeHorizontal=(_screenWidth/100);
    _blockSizeVertical=(_screenHeight/100);

    textMultiplier=_blockSizeVertical;
    imageSizeMultiplier=_blockSizeHorizontal;
    heightMultiplier=_blockSizeVertical;
    print(_blockSizeHorizontal);
    print(_blockSizeVertical);
  }

}