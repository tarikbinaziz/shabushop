import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Screens/Auth/signup.dart';
import 'package:shabu_shop/Screens/Auth/verification_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Const/const.dart';
import '../../Widget/custom_logo.dart';
import '../../Widget/custom_textField.dart';
import '../../Widget/signin_button.dart';
import '../Home/home_bottom_nav.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.height()*0.1,),
              Text(
                forgotPasswordS,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              16.heightBox,
              Text(
                enterEmailAddressAssociated,
                textAlign: TextAlign.center,
                style: TextStyle(color: productDetailsColor),
              ),
            50.heightBox,
            customTextField(
                hint: mobileNo, textFieldType: TextFieldType.NUMBER),
              Spacer(),
              signInCustomButton(
                  text: checkoutAll,
                  onTap: () {
                    VerificationScreen().launch(context);
                  }),

            ],
          ),
        ),
      ),
    );
  }
}
