import '../../../Const/const.dart';
import '../../../Widget/custom_appbar.dart';

class MakeupItemsScreen extends StatelessWidget {
  const MakeupItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: makeUpItems),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("No items",style: TextStyle(fontWeight: FontWeight.bold),)
        ],),
      ),
    );
  }
}
