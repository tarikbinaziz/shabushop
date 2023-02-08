

import 'package:nb_utils/nb_utils.dart';
import '../Const/const.dart';

Widget signInCustomButton({String? text,onTap}){
  return  AppButton(
    text: text,
    elevation: 0,
    textColor: bgColor,
    width: double.infinity,
    color: mainColor,
    shapeBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12)),
    onTap: onTap,
  );
}