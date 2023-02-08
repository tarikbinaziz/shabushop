import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Const/const.dart';
import 'package:shabu_shop/Screens/Auth/signin.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Controller/onboarding_controller.dart';
import '../Home/home_bottom_nav.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnBoarding c = Get.put(OnBoarding());
    var width=ContextExtensions(context).width();
    var height =ContextExtensions(context).height();
    return Scaffold(
      backgroundColor:bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child:
              Obx(
                () => Column(
                  children: [Flexible(
                    child: PageView.builder(
                        controller: c.pageViewController.value,
                        padEnds: false,
                        itemCount: onBoardingImageList.length,
                      physics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (index) {
                          c.currentIndex.value = index;
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                             SizedBox(height: height*0.08,),
                              Container(
                                height: height*0.3,
                                width: width - 20,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            onBoardingImageList[index]))),
                              ),
                              80.heightBox,
                              Text(
                                onBoardingTitleList[index],
                                style: TextStyle(
                                    color: titleColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              16.heightBox,
                              SizedBox(
                                  width: width/1.5,
                                  child: Text(onBoardingDescriptionList[index],textAlign: TextAlign.center,)),
                              30.heightBox,
                              Obx(()=>
                                  DotsIndicator(
                                    dotsCount: onBoardingImageList.length,
                                    position: c.currentIndex.value.toDouble(),
                                    decorator: DotsDecorator(
                                      size: const Size.square(7.0),
                                      activeSize: const Size(25.0, 7.0),
                                      activeColor: mainColor,
                                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                    ),
                                  ),
                              ),
                              Spacer(),
                              Obx(()=>
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: AppButton(
                                      color: mainColor,
                                      elevation: 0,
                                      width: double.infinity,
                                      shapeBorder:StadiumBorder(),
                                      onTap: () {
                                        c.currentIndex.value < 2
                                            ? c.pageViewController.value.nextPage(
                                            duration: Duration(milliseconds: 500),
                                            curve: Curves.ease)
                                            : SignInScreen().launch(context);
                                      },
                                      text: c.currentIndex.value < 2? con : findYourBeautee,
                                      textColor: bgColor,
                                    ),
                                  ),
                              ),
                            ],
                          );
                        }),
                  ),
                ]),
              ),


        ),
      ),
    );
  }
}
