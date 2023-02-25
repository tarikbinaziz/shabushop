import 'package:flutter/material.dart';
import 'package:shabu_shop/Const/const.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Widget/custom_appbar.dart';

class HowWeWorksScreen extends StatelessWidget {
  const HowWeWorksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: howWeWorks),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            20.heightBox,
            Text(
              subuShopltdHas,
              style: TextStyle(color: titleColor,fontWeight: FontWeight.bold),
            ),
            20.heightBox,
            Text(
              allStep,
              style: TextStyle(color: titleColor, ),
            ),
          ],
        ),
      ),
    );
  }
}
