import 'package:shabu_shop/Const/const.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Widget/custom_appbar.dart';

class ReturnPolicyScreen extends StatelessWidget {
  const ReturnPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: returnPolicy),
      body: Center(
        child: Text(
          soldItems,
          textAlign: TextAlign.center,
          style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
