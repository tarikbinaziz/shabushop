
import 'package:pinput/pinput.dart';
import 'package:shabu_shop/Const/const.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Text(
                  typeTheVerification,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: productDetailsColor),
                ),
              ),
              60.heightBox,
              Pinput(
                defaultPinTheme: PinTheme(
                  height: 60,
                    width: 56,
                    decoration: BoxDecoration(color: textFieldBgColor,borderRadius: BorderRadius.circular(10))),
                //  defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,
                //  validator: (s) {
                //    return s == '2222' ? null : 'Pin is incorrect';
                //  },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
