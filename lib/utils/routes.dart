import 'package:flutter/material.dart';
import 'package:video_player/view/dashboard/screens/dashboard.dart';
import 'package:video_player/view/login.dart';
import 'package:video_player/view/otp_view.dart';
import 'package:video_player/view/video_player.dart';

Map<String, WidgetBuilder> appRoutes() => {
      LoginView.route: (_) => const LoginView(),
      VideoPlayerView.route: (_) => const VideoPlayerView(),
      OtpView.route: (_) => const OtpView(),
      Dashboard.route: (_) => Dashboard(),
    };

RouteFactory onAppGenerateRoute() => (settings) {
      if (settings.name == OtpView.route) {
        final arg = settings.arguments! as OtpView;
        return MaterialPageRoute(builder: (context) {
          return OtpView(
            phone: arg.phone,
            code_digit: arg.code_digit,
          );
        });
      }
    };
