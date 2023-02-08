import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Const/const.dart';
import 'Feature/tittle_icon.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: bgColor),
        elevation: 0,
        leadingWidth: 80,
        leading: Icon(
          IconlyLight.arrow_left,
          color: titleColor,
        )
            .box
            .roundedFull
            .color(profileIconContainerColor)
            .padding(EdgeInsets.all(10))
            .make(),
        title: Text(
          profile,
          style: TextStyle(color: titleColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(imgProfile),
                    radius: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mayeshaMIm,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          fakeGamil,
                          style: TextStyle(color: productDetailsColor),
                        ),
                        TextButton(
                            style: ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.zero),
                                visualDensity: VisualDensity(vertical: -4)),
                            onPressed: () {},
                            child: Text(
                              editProfile,
                              style: TextStyle(color: bottomNavSelectIconColor),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              30.heightBox,
              Text(
                myAccount,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: myAccountColor.withOpacity(0.3)),
              ),
              16.heightBox,
              titleIcon(text: personalInfo),
              16.heightBox,
              titleIcon(text: paymentInfomation),
              16.heightBox,
              titleIcon(text: payoutInfomation),
              16.heightBox,
              titleIcon(text: notification),
              24.heightBox,
              Text(
                information,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: myAccountColor.withOpacity(0.3)),
              ),
              16.heightBox,
              titleIcon(text: appsVersion),
              16.heightBox,
              titleIcon(text: howWeWorks),
              16.heightBox,
              titleIcon(text: privacyPilicy),
              16.heightBox,
              titleIcon(text: notification),
            ],
          ),
        ),
      ),
    );
  }
}
