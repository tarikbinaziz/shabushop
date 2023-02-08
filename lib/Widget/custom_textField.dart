import 'package:nb_utils/nb_utils.dart';
import '../Const/const.dart';

Widget customTextField({textFieldType, hint, suffixIconColor}) {
  return AppTextField(
    textFieldType: textFieldType,
    suffixIconColor: suffixIconColor,
    decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: textFieldHintColor),
        filled: true,
        fillColor: textFieldBgColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none)),
  );
}
