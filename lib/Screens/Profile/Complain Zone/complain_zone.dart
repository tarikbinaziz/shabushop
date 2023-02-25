import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Const/const.dart';
import '../../../Widget/custom_appbar.dart';
import '../../../Widget/custom_textField.dart';
import '../../../Widget/signin_button.dart';
class ComplainZoneScreen extends StatelessWidget {
  const ComplainZoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: complainZone),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customTextField(
                  hint: fullName, textFieldType: TextFieldType.NAME),
              10.heightBox, customTextField(
                  hint: email, textFieldType: TextFieldType.EMAIL),
              10.heightBox,
              customTextField(
                  hint: mobileNo, textFieldType: TextFieldType.NUMBER),
              10.heightBox,
              signInCustomButton(
                  text: submit,
                  onTap: () {
                  }),

            ],
          ),
        ),
      ),
    );
  }
}
