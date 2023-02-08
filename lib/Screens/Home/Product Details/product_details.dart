import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Widget/custom_button.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../Const/const.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: bgColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Icon(
              IconlyLight.buy,
              color: titleColor,
            )
                .box
                .roundedSM
                .color(pDtailsContainerColor)
                .padding(EdgeInsets.all(21))
                .make(),
            20.widthBox,
            Expanded(child: AppButton(
              color: mainColor,
              padding: EdgeInsets.symmetric(vertical: 22),
              elevation: 0,
              shapeBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              onTap: (){},
              text: buyNow,
              textColor: bgColor,
            )
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 370,
              width: double.infinity,
              color: mainColor,
              child: Stack(alignment: Alignment.center, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 8),
                  child: Container(
                    height: 370,
                    width: ContextExtensions(context).width() / 1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage(imgP3),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 160),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(
                        color: bgColor,
                      )
                          .box
                          .roundedFull
                          .color(bgColor.withOpacity(0.35))
                          .padding(EdgeInsets.all(10))
                          .make(),
                      Icon(
                        Icons.more_horiz,
                        color: bgColor,
                      )
                          .box
                          .roundedFull
                          .color(bgColor.withOpacity(0.35))
                          .padding(EdgeInsets.all(21))
                          .make(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.photo_filter,
                        color: bgColor,
                      ),
                      8.widthBox,
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          tryNow,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: bgColor),
                        ),
                      )
                    ],
                  )
                      .box
                      .color(bgColor.withOpacity(0.35))
                      .padding(EdgeInsets.all(8))
                      .roundedSM
                      .make(),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          mblCentellaCICASoothinggel,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Icon(
                        IconlyLight.heart,
                        color: pDtailsIconColor,
                      )
                          .box
                          .roundedFull
                          .color(pDtailsContainerColor)
                          .padding(EdgeInsets.all(21))
                          .make(),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      RatingBarWidget(
                        itemCount: 5,
                        inActiveColor: Colors.black12,
                        onRatingChanged: (val) {},
                      ),
                      10.widthBox,
                      Text(
                        "4.8",
                        style: TextStyle(
                            color: ratingColor, fontWeight: FontWeight.bold),
                      ),
                      20.widthBox,
                      Text(
                        outOfStock,
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                          .box
                          .padding(EdgeInsets.all(4))
                          .border(color: Colors.black)
                          .makeCentered()
                    ],
                  ),
                  20.heightBox,
                  Text(
                    productDetails,
                    style: TextStyle(
                      color: productDetailsColor,
                    ),
                  ),
                  24.heightBox,
                  Text(
                    ponnerBiboron,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    endIndent: 265,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
