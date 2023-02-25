import 'package:get/get.dart';
import 'package:shabu_shop/Screens/Home/home_screen.dart';
import 'package:shabu_shop/Screens/Notification/notification_screen.dart';
import '../../Const/const.dart';
import '../../Controller/bottom_nav_controller.dart';
import '../Message/message_screen.dart';
import '../Profile/profile_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(BottomNavController());
    List pages = [
      HomeScreen(),
      NotificationScreen(),
      MessageScreen(),
      ProfileScreen()
    ];

    return Obx(() => Scaffold(
          body: pages.elementAt(c.currentIndex.value),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 2),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                    backgroundColor: bgColor,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    currentIndex: c.currentIndex.value,
                    unselectedItemColor: bottomNavUnSelectIconColor,
                    selectedItemColor: bottomNavSelectIconColor,
                    type: BottomNavigationBarType.fixed,
                    onTap: (index) {
                      c.currentIndex.value = index;
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: c.currentIndex.value == 0
                                    ? bottomNavContainerIconColor
                                    : Colors.transparent,
                              ),
                              child: Icon(c.currentIndex.value == 0
                                  ? IconlyBold.home
                                  : IconlyLight.home)),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: c.currentIndex.value == 1
                                    ? bottomNavContainerIconColor
                                    : Colors.transparent,
                              ),
                              child: Icon(c.currentIndex.value == 1
                                  ? IconlyBold.notification
                                  : IconlyLight.notification)),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: c.currentIndex.value == 2
                                    ? bottomNavContainerIconColor
                                    : Colors.transparent,
                              ),
                              child: Icon(c.currentIndex.value == 2
                                  ? IconlyBold.message
                                  : IconlyLight.message)),
                          label: ''),
                      BottomNavigationBarItem(
                          icon: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: c.currentIndex.value == 3
                                    ? bottomNavContainerIconColor
                                    : Colors.transparent,
                              ),
                              child: Icon(c.currentIndex.value == 3
                                  ? IconlyBold.profile
                                  : IconlyLight.profile)),
                          label: ''),
                    ]),
              ),
            ),
          ),
        ));
  }
}
