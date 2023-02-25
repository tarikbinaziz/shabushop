import 'package:velocity_x/velocity_x.dart';

import '../../../Const/const.dart';
import '../../../Widget/custom_appbar.dart';
import '../../Widget/bottom_pages_appbar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customBottomPagesAppbar(text: message),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.heightBox,
            Text("Contuct us with:"),
            16.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  3,
                  (index) => Image.asset(
                        socialIcon[index],
                        width: 40,
                      )
                          .box
                          .roundedSM
                          .margin(EdgeInsets.all(4))
                          .border(color: mainColor.withOpacity(0.1))
                          .padding(
                              EdgeInsets.symmetric(vertical: 10, horizontal: 20))
                          .make()),
            ),
          ],
        ),
      ),
    );
  }
}
