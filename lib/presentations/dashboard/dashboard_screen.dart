import 'package:asp_web/core/utiils_lib/extensions.dart';
import 'package:asp_web/presentations/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import 'side_menu.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final SidebarXController _controller =
      SidebarXController(selectedIndex: 0, extended: true);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Builder(builder: (context) {
      final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
      return Scaffold(
        key: _scaffoldKey,
        appBar: isSmallScreen
            ? AppBar(
                title: Text('Admin'),
                leading: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: context.appColor.blackColor,
                  ),
                ),
              )
            : null,
        drawer: SideBarXExample(
          controller: _controller,
        ),
        body: Row(
          children: [
            if (!isSmallScreen) SideBarXExample(controller: _controller),
            Expanded(
              child: Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    switch (_controller.selectedIndex) {
                      case 0:
                        _scaffoldKey.currentState?.closeDrawer();
                        return HomeScree();
                      case 1:
                        _scaffoldKey.currentState?.closeDrawer();
                        return HomeScree();
                      case 2:
                        _scaffoldKey.currentState?.closeDrawer();
                        return HomeScree();
                      case 3:
                        _scaffoldKey.currentState?.closeDrawer();
                        return HomeScree();

                      default:
                        return DashboardScreen();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }));
  }
}
