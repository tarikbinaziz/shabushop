import 'package:shabu_shop/Const/const.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Widget/custom_appbar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: privacyPilicy),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              Text(
                orderPolicy,
                style: TextStyle(fontWeight: FontWeight.bold, color: titleColor),
              ),
              16.heightBox,
              Image.asset(imgOrderPolicy),
              24.heightBox,
              Text(
                whenYouUse,
                style: TextStyle( color: titleColor),
              ),
              16.heightBox,
              Text(
                belowAreSome,
                style: TextStyle( color: titleColor),
              ),
              24.heightBox,


            ],
          ),
        ),
      ),
    );
  }
}
