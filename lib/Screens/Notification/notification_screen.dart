import 'package:velocity_x/velocity_x.dart';
import '../../Const/const.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
      //  systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: bgColor),
        elevation: 0,
        leadingWidth: 80,
        // leading: BackButton(
        //   color: titleColor,
        // )
        //     .box
        //     .roundedFull
        //     .color(profileIconContainerColor)
        //     .padding(EdgeInsets.all(10))
        //     .make(),
        title: Text(
          notification,
          style: TextStyle(color: titleColor),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: titleColor,
          )
              .box
              .roundedFull
              .color(profileIconContainerColor)
              .padding(EdgeInsets.all(16))
              .margin(EdgeInsets.only(right: 10))
              .make(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            20.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  AntIcons.fileDoneOutlined,
                  color: bottomNavSelectIconColor,
                )
                    .box
                    .color(notificationColor)
                    .roundedFull
                    .padding(EdgeInsets.all(10))
                    .border(color: bottomNavSelectIconColor)
                    .make(),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          orderSuccess,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        8.heightBox,
                        Text(
                          yourOrderHasBeen,
                          style: TextStyle(),
                        ),
                        8.heightBox,
                        Text(
                          july,
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            30.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imgBox,
                  color: bottomNavSelectIconColor,
                )
                    .box
                    .color(notificationColor)
                    .roundedFull
                    .padding(EdgeInsets.all(15))
                    .border(color: bottomNavSelectIconColor)
                    .make(),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          orderArrived,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        8.heightBox,
                        Text(
                          yourOrderHasBeenConfirmd,
                          style: TextStyle(),
                        ),
                        8.heightBox,
                        Text(
                          july,
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            30.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imgPayment,
                  width: 25,
                  color: bottomNavSelectIconColor,
                )
                    .box
                    .color(notificationColor)
                    .roundedFull
                    .padding(EdgeInsets.all(10))
                    .border(color: bottomNavSelectIconColor)
                    .make(),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          paymentConfirmed,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        8.heightBox,
                        Text(
                          yourOrderHasBeen,
                          style: TextStyle(),
                        ),
                        8.heightBox,
                        Text(
                          july,
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
