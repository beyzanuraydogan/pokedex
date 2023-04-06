import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
  Constants._(); //kurucu metotu gizli yaptım! nesne üretilemez.

  static String pokeballImageUrl ='images/pokeball.png';

  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle(){
    return const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 48);
  }  

  static TextStyle getPokemonNameTextStyle(){
    return const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28);
  }  

  static TextStyle getTypeChipTextStyle(){
    return const TextStyle(
                color: Colors.white,
                fontSize: 16);
  }       

  static calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }
    else{
      return (size*3).sp;
    }
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
      fontSize: calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black );
  }
  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: calculateFontSize(16),color: Colors.black );
  }      
}
 