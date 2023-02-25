import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shabu_shop/Const/const.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoController extends GetxController {
  late YoutubePlayerController playerController;

  @override
  void onInit() {
    super.onInit();
    playerController = YoutubePlayerController(
      initialVideoId:[
        "f-vtcKBRGiw",
        "TQOiZJ64aTM",
        "oIDeOnDgXG0",
        "XquuZAo8Lgc",
        "iUlr8RbZFEg",
        "uE1tR-egAmA",
        "WB89NjamBKE"
      ].toString(),
      flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
          disableDragSeek: true,
          loop: false,
          enableCaption: false
      ),
    );
  }
}
