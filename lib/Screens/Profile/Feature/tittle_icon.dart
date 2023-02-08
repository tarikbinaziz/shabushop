
import '../../../Const/const.dart';

Widget titleIcon({String? text}){
  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text!,
        style: TextStyle(
            fontWeight: FontWeight.w600, color: titleColor),
      ),
      Icon(IconlyLight.arrow_right_2)
    ],);
}