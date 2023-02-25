import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Screens/Notification/notification_screen.dart';
import 'package:shabu_shop/Screens/Profile/About%20us/about_us.dart';
import 'package:shabu_shop/Screens/Profile/App%20Version/app_version.dart';
import 'package:shabu_shop/Screens/Profile/Personal%20Info/personal_info.dart';
import 'package:shabu_shop/Screens/Profile/Privacy%20Policy/privacy_policy.dart';
import 'package:shabu_shop/Screens/Profile/Return%20Policy/return_policy.dart';
import 'package:shabu_shop/Screens/Profile/Truck%20Order/truck_order.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../Const/const.dart';
import '../../Widget/bottom_pages_appbar.dart';
import 'Complain Zone/complain_zone.dart';
import 'Feature/tittle_icon.dart';
import 'How We Works/how_we_works.dart';
import 'Payment Info/payment_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customBottomPagesAppbar(text: profile),
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
              titleIcon(text: personalInfo).onTap(() {
                PersonalInfoScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: paymentInfomation).onTap(() {
                PaymentInfoScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: payoutInfomation),
              16.heightBox,
              titleIcon(text: notification).onTap(() {
                NotificationScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: tracking).onTap(() {
                TrackOrderScreen().launch(context);
              }),
              24.heightBox,
              Text(
                information,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: myAccountColor.withOpacity(0.3)),
              ),
              16.heightBox,
              titleIcon(text: appsVersion).onTap(() {
                AppVersion().launch(context);
              }),
              16.heightBox,
              titleIcon(text: howWeWorks).onTap(() {
                HowWeWorksScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: privacyPilicy).onTap(() {
                PrivacyPolicyScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: returnPolicy).onTap(() {
                ReturnPolicyScreen().launch(context);
              }),
              16.heightBox,
              titleIcon(text: aboutUs).onTap(() {
                AboutUsScreen().launch(context);
              }),
              16.heightBox,
              AppButton(
                onTap: () {
                  ComplainZoneScreen().launch(context);
                },
                text: complainZone,
                shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                textStyle: TextStyle(color: Colors.white),
                color: mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }


}
