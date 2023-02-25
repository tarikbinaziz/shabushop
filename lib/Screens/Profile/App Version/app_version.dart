import 'package:shabu_shop/Widget/custom_appbar.dart';

import '../../../Const/const.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: appsVersion),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Version: ",),
            Text("1.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: mainColor),),
          ],
        ),
      ],),

    );
  }
}
