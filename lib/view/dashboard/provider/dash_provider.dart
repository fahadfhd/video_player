import 'package:video_player/providers/base_provider.dart';

class DashboardProvider extends BaseProvider {
  DashboardProvider() : super(name: 'DashboardProvider');

  int _index = 0;
  int get currentIndex => _index;
  set currentIndex(int value) {
    _index = value;
    notifyListeners();
  }
}
