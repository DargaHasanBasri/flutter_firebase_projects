import 'package:flutter_zoom_drawer/config.dart';

import '../../../export.dart';

class MainPage extends StatefulWidget {
  final BuildContext context;
  final ZoomDrawerController zoomDrawerController;
  const MainPage(
      {super.key, required this.context, required this.zoomDrawerController});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final zoomDrawerController = ZoomDrawerController();
  List<String> screenStringTest = ["Home", "Explore", "Profile", "Settings"];
  List<IconData> screenIconTest = [
    Icons.apps,
    Icons.search,
    Icons.person,
    Icons.settings
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppConstans.appBackground,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => widget.zoomDrawerController.toggle?.call(),
                  icon: const Icon(
                    Icons.menu,
                    color: AppConstans.mainWhite,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 200),
            Text(
              screenStringTest[selectedIndex],
              style: const TextStyle(
                fontSize: 50.0,
                color: AppConstans.mainWhite,
                fontFamily: FontConstans.poppinsMedium,
              ),
            ),
            Icon(
              screenIconTest[selectedIndex],
              size: 70.0,
              color: AppConstans.mainWhite,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          selectedItemColor: AppConstans.appBackground,
          selectedFontSize: 14.0,
          selectedIconTheme: const IconThemeData(size: 28.0),
          unselectedIconTheme:
              IconThemeData(size: 25.0, color: Colors.grey[500]),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
