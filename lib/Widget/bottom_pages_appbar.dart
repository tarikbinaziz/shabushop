

import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Const/const.dart';

AppBar customBottomPagesAppbar({String? text}){
  return AppBar(
    backgroundColor: bgColor,
    centerTitle: true,
   // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: bgColor),
    elevation: 0,
    leadingWidth: 80,
    // leading: BackButton(
    //   color: titleColor,
    // )
    //     .box
    //     .roundedFull
    //     .color(profileIconContainerColor)
    //     .padding(EdgeInsets.all(10))
    //     .make(),
    title: Text(
      text!,
      style: TextStyle(color: titleColor),
    ),
  );
}