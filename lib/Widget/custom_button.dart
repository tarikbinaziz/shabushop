
import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Const/color.dart';

Widget customElevatedButton({String? text,onPress,width}){
  return AppButton(
    color: mainColor,
    elevation: 0,
    width:width,
    shapeBorder:StadiumBorder(),
    onTap: onPress,
    text: text,
    textColor: bgColor,
  );
}