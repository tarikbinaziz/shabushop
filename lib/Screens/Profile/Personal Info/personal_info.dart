import 'package:shabu_shop/Widget/custom_appbar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Const/const.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: personalInfo),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.heightBox,
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            8.heightBox,
            Text("Md tarik bin aziz"),
            24.heightBox,
            Text(
              email,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            8.heightBox,
            Text("abc@gmail.com"),
            16.heightBox,
            Text(
              number,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            8.heightBox,
            Text("0156444333"),
            24.heightBox,
            Text(
              address,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            8.heightBox,
            Text("road 12,section-12,Mohammadi housing limited"),
            16.heightBox,
          ],
        ),
      ),
    );
  }
}
