import 'package:flutter/material.dart';
import 'package:video_player/utils/colors.dart';
import 'package:video_player/utils/styles.dart';
import 'package:video_player/view/dashboard/provider/dash_provider.dart';
import 'package:video_player/view/video_player.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  static const String route = '/dashboard';
  final List<String> _title = ['Home', 'Profile', 'Logout'];
  final List<Widget> _screens = [
    const VideoPlayerView(),
  ];
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardProvider _dashboardProvider =
        Provider.of<DashboardProvider>(context);
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Builder(builder: (context) {
          return AppBar(
            backgroundColor: colorBlue,
            centerTitle: false,
            leading: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
            title: Text(
              _title[_dashboardProvider.currentIndex],
              style: tsS16BWhite,
            ),
          );
        }),
      ),
      body: _screens[_dashboardProvider.currentIndex],
      drawer: drawerWidget(
        context,
        _dashboardProvider,
      ),
    );
  }

  Widget drawerWidget(
    BuildContext context,
    DashboardProvider _provider,
  ) =>
      Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: SizedBox(
                child: Text(
                  "Video_player",
                  style: tsS18BLUE,
                ),
              ),
            ),
            Column(
              children: [
                DrawerItem(
                  title: 'Home',
                ),
                DrawerItem(
                  title: 'Profile',
                ),
              ],
            )
          ],
        ),
      );
}

class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  // ignore: use_key_in_widget_constructors
  const DrawerItem({required this.title, this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListTile(
          onTap: function,
          title: Text(
            title,
            style: tsS14BoldBlack,
          ),
        ),
      ),
    );
  }
}
