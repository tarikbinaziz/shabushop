import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Const/const.dart';
import '../../../Widget/custom_appbar.dart';

class HairCareScreen extends StatelessWidget {
  const HairCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: customAppbar(text: personalCare),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.88
                ),
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/hc1.JPG"),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: ContextExtensionss(context).width,
                          color: personalCareContainerColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Heena Malaysian shampoo 300ml",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: titleColor),
                              ),

                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imgTk,
                                    width: 12,
                                  ),
                                  5.widthBox,
                                  Text(
                                    "1,090.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: priceColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ).box.shadowSm.make();
                })
          ],
        ),
      ),
    );
  }
}
