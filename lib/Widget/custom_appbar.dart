
import 'package:velocity_x/velocity_x.dart';
import '../Const/const.dart';

AppBar customAppbar({String? text}){
  return AppBar(
  backgroundColor: bgColor,
  centerTitle: true,
 // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: bgColor),
  elevation: 0,
  leading: Padding(
    padding: const EdgeInsets.all(8.0),
    child: BackButton(
    color: titleColor,
    )
        .box
        .roundedFull
        .color(profileIconContainerColor)
        .make(),
  ),
  title: Text(
  text!,
  style: TextStyle(color: titleColor),
  ),
  );
}