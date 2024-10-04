import 'package:emasjid/screen/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:emasjid/screen/partials/side_menu.dart'; // Import SideMenu
import 'package:emasjid/components/color.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  Widget _currentScreen = const Dashboard();
  void _setScreen(Widget screen) {
    setState(() {
      _currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: AppColors.secondaryColor, size: 30),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: SideMenu(onMenuTap: _setScreen),
      body: SafeArea(
        child: _currentScreen,
      ),
    );
  }
}
