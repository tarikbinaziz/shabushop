import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../Const/const.dart';
import '../../Controller/youtube_controller.dart';
import 'Category/Hair_care.dart';
import 'Category/Make_up.dart';
import 'Category/personal_care.dart';
import 'Category/skin_care.dart';
import 'Product Details/product_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final VideoController videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 80,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        titleSpacing: -6,
        leading: Image.asset(
          imgLogoWithoutText,
        ),
        title: AppTextField(
          textFieldType: TextFieldType.NAME,
          decoration: InputDecoration(
            filled: true,
            hintText: searchProducts,
            hintStyle: TextStyle(color: bottomNavUnSelectIconColor),
            prefixIcon: Icon(
              IconlyLight.search,
              color: bottomNavUnSelectIconColor,
            ),
            fillColor: bottomNavContainerIconColor,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40)),
          ),
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bottomNavContainerIconColor,
              ),
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Icon(
                IconlyLight.buy,
                color: titleColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HorizontalList(
                itemCount: 3,
                spacing: 16,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 124,
                    width: ContextExtensions(context).width() / 1.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                            image: AssetImage(imgBanner), fit: BoxFit.fill)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            off20,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: bgColor,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: 140,
                            child: Text(
                              voucherForAll,
                              style: TextStyle(
                                color: bgColor.withOpacity(0.6),
                              ),
                            ),
                          ),
                          4.heightBox,
                          AppButton(
                            text: shopNow,
                            textStyle: TextStyle(fontWeight: FontWeight.normal),
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            textColor: mainColor,
                            color: redeemButtonColor,
                            shapeBorder: StadiumBorder(),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              24.heightBox,
              HorizontalList(
                  runSpacing: 0,
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  itemCount: productCategory.length,
                  itemBuilder: (context, index) {
                    return Text(productCategory[index])
                        .onTap(() => index == 0
                            ? PersonalCareScreen().launch(context)
                            : index == 1
                                ? SkinCareScreen().launch(context)
                                : index == 2
                                    ? HairCareScreen().launch(context)
                                    : MakeupItemsScreen().launch(context))
                        .box
                        .roundedLg
                        .padding(EdgeInsets.all(12))
                        .border(color: categoryBorderColor)
                        .margin(EdgeInsets.all(0))
                        .make();
                  }),
              24.heightBox,
              ourLatestProducts.text.size(18).bold.color(titleColor).make(),
              16.heightBox,
              HorizontalList(
                itemCount: productList.length,
                runSpacing: 0,
                padding: EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(imgP1)
                          .box
                          .roundedSM
                          .color(productBgColor)
                          .width(125)
                          .height(80)
                          .make(),
                      10.heightBox,
                      Text(
                        productList[index].toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Image.asset(
                            imgTk,
                            width: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            amountList[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: bottomNavContainerIconColor,
                              ),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                IconlyLight.buy,
                                size: 16,
                                color: titleColor,
                              ))
                        ],
                      )
                    ],
                  )
                      .onTap(() => ProductDetailsScreen().launch(context))
                      .box
                      .roundedSM
                      .color(productContainerBgColor)
                      .width(142)
                      .padding(EdgeInsets.all(8))
                      .make();
                },
              ),
              24.heightBox,
              popular.text.size(18).bold.color(titleColor).make(),
              16.heightBox,
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 70,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(imgP2)
                            .box
                            .roundedSM
                            .color(productBgColor)
                            .width(60)
                            .height(60)
                            .make(),
                        10.widthBox,
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                productTitle,
                                style:
                                    TextStyle(color: titleColor, fontSize: 10),
                              ),
                              6.heightBox,
                              Row(
                                children: [
                                  Image.asset(
                                    imgTk,
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "1200",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
              24.heightBox,
              Text(
                latestProductLive,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: titleColor),
              ),
              16.heightBox,
              HorizontalList(
                  itemCount: youtubeList.length,
                  spacing: 20,
                  runSpacing: 0,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bottomNavContainerIconColor,
                      ),
                      width: ContextExtensionss(context).width / 1.5,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: YoutubePlayer(
                          controller:
                          YoutubePlayerController(
                            initialVideoId: youtubeList[index],
                            flags: YoutubePlayerFlags(
                                mute: false,
                                autoPlay: false,
                                disableDragSeek: true,
                                loop: false,
                                enableCaption: false),
                          ),
                          showVideoProgressIndicator: false,
                          bufferIndicator: null,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(
                              isExpanded: true,
                              colors: ProgressBarColors(
                                  playedColor: Colors.amber,
                                  handleColor: Colors.amberAccent),
                            ),
                            PlaybackSpeedButton(),
                          ],
                          // videoProgressIndicatorColor: Colors.amber,
                          // progressColors: ProgressColors(
                          //   playedColor: Colors.amber,
                          //   handleColor: Colors.amberAccent,
                          // ),
                        ),
                      ),
                    );
                  }),
              24.heightBox,
              Text(
                customerReview,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: titleColor),
              ),
              16.heightBox,
              HorizontalList(
                  itemCount: youtubeList.length,
                  spacing: 20,
                  runSpacing: 0,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bottomNavContainerIconColor,
                      ),
                      width: ContextExtensionss(context).width / 1.5,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: youtubeReviewList[index],
                            flags: YoutubePlayerFlags(
                                mute: false,
                                autoPlay: false,
                                disableDragSeek: true,
                                loop: false,
                                enableCaption: false),
                          ),

                          showVideoProgressIndicator: true,
                          bufferIndicator: null,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(
                              isExpanded: true,
                              colors: ProgressBarColors(
                                  playedColor: Colors.amber,
                                  handleColor: Colors.amberAccent),
                            ),
                            PlaybackSpeedButton(),
                          ],
                        ),
                      ),
                    );
                  }),
              24.heightBox,
              Text(
                ourBlog,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: titleColor),
              ),
              16.heightBox,
              HorizontalList(
                itemCount: 4,
                spacing: 20,
                runSpacing: 0,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.asset(
                        imgGirl,
                      ),
                      10.heightBox,
                      Text(
                        productTitlem,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      10.heightBox,
                      Text(
                        productDetails,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                      Spacer(),
                      AppButton(
                        padding: EdgeInsets.all(
                          2,
                        ),
                        onTap: () {},
                        elevation: 0,
                        shapeBorder: StadiumBorder(),
                        text: aroPorun,
                        textStyle: TextStyle(fontSize: 12, color: Colors.white),
                        color: mainColor,
                      )
                    ],
                  )
                      .box
                      .roundedSM
                      .width(166)
                      .height(350)
                      .padding(EdgeInsets.all(10))
                      .margin(EdgeInsets.all(4))
                      .white
                      .shadowSm
                      .make();
                },
              ),
              24.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            .padding(EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20))
                            .make()),
              ),
              24.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
