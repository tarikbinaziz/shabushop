import 'package:shabu_shop/Const/const.dart';
import '../../../Widget/custom_appbar.dart';

class PaymentInfoScreen extends StatelessWidget {
  const PaymentInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: paymentInfomation),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("No history"),
        ],),
      ),
    );
  }
}
