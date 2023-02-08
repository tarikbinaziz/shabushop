import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Screens/Auth/signin.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Const/const.dart';
import '../../Widget/custom_logo.dart';
import '../../Widget/custom_textField.dart';
import '../../Widget/signin_button.dart';
import '../Home/home_bottom_nav.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customLogo(),
              customTextField(
                  hint: mobileNo, textFieldType: TextFieldType.NUMBER),
              24.heightBox,
              customTextField(
                  hint: username, textFieldType: TextFieldType.OTHER),
              24.heightBox,
              customTextField(
                  hint: password,
                  suffixIconColor: textFieldHintColor,
                  textFieldType: TextFieldType.PASSWORD),
              16.heightBox,
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: borderColor,
                        thickness: 2,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      orSignUpWith,
                      style: TextStyle(color: bottomNavSelectIconColor),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: borderColor,
                        thickness: 2,
                  )),
                ],
              ),
              16.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                InkResponse(child: Image.asset(imgfb,width: 62,),onTap: (){},),
                20.widthBox,
                InkResponse(child: Image.asset(imgGoogle,width: 35,),onTap: (){},)
              ],),
              30.heightBox,
              signInCustomButton(
                  text: register,
                  onTap: () {
                    BottomNavBarScreen().launch(context);
                  }),
              AppButton(
                padding: EdgeInsets.zero,
                elevation: 0,
                color: Colors.transparent,
                onTap: (){SignInScreen().launch(context);},
                child: Text(
                  login,
                  style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
