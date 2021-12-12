import 'package:flutter/material.dart';
import 'package:video_player/common_widgets/common_button.dart';

import 'package:video_player/utils/colors.dart';
import 'package:video_player/utils/styles.dart';

class VideoPlayerView extends StatefulWidget {
  static const route = "/videoplayer";
  const VideoPlayerView({Key? key}) : super(key: key);

  @override
  _VideoPlayerViewState createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: colorffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonButton(
              buttonName: "Download",
              color: colorWhite80,
              style: tsS14Black,
            )
          ],
        ),
      ),
    );
  }
}
