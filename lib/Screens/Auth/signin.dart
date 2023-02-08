import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Screens/Auth/signup.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Const/const.dart';
import '../../Widget/custom_logo.dart';
import '../../Widget/custom_textField.dart';
import '../../Widget/signin_button.dart';
import '../Home/home_bottom_nav.dart';
import 'forgot_password.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: customLogo(),
              ),
              customTextField(
                  hint: usernameOrMobileNumber,
                  textFieldType: TextFieldType.OTHER),
              24.heightBox,
              customTextField(
                  hint: password,
                  suffixIconColor: textFieldHintColor,
                  textFieldType: TextFieldType.PASSWORD),
              Align(
                  alignment: Alignment.topLeft,
                  child: AppButton(
                    padding: EdgeInsets.zero,
                    color: Colors.transparent,
                    elevation: 0,
                    onTap: ()=>ForgotPasswordScreen().launch(context),
                    child: Text(
                      forgotPassword,
                      style: TextStyle(
                        color: mainColor,
                      ),
                    ),
                  )),
              Spacer(),
              signInCustomButton(text: login,onTap: (){
                BottomNavBarScreen().launch(context);
              }),
              AppButton(
                padding: EdgeInsets.zero,
                elevation: 0,
                color: Colors.transparent,
                onTap: (){
                  SignUpScreen().launch(context);
                },
                child: Text(
                  register,
                  style: TextStyle(
                    color: titleColor,fontWeight: FontWeight.bold,fontSize: 16
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
