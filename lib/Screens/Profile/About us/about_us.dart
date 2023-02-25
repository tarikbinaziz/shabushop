import 'package:shabu_shop/Const/const.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Widget/custom_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: aboutUs),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(imgLogo,width: 160,),
            Text(
              sabuShopDes,
              textAlign: TextAlign.center,
              style: TextStyle(color: titleColor),
            ),
            24.heightBox,
            Row(children: [
              Icon(IconlyLight.call),
              10.widthBox,
              Text("Phone : 09638877777",style: TextStyle(fontWeight: FontWeight.w500),)
            ],),
            16.heightBox,
            Row(children: [
              Icon(IconlyLight.message,),
              10.widthBox,
              Text("Email : support@sabushopltd.com",style: TextStyle(fontWeight: FontWeight.w500),)
            ],),

            
          ],
        ),
      ),
    );
  }
}
