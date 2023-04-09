import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuBackgroundColor: AppConstans.secondWhite,
      shadowLayer1Color: AppConstans.mainGrey,
      shadowLayer2Color: AppConstans.mainBlack,
      menuScreen: MenuPage(
          context: context, zoomDrawerController: zoomDrawerController),
      borderRadius: 50,
      showShadow: true,
      angle: -16,
      //drawerShadowsBackgroundColor: AppConstans.secondWhite,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      mainScreen: MainPage(
          context: context, zoomDrawerController: zoomDrawerController),
    );
  }
}
