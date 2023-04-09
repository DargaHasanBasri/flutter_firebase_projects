import 'package:flutter_zoom_drawer/config.dart';

import '../../../export.dart';

class MenuPage extends StatefulWidget {
  final BuildContext context;
  final ZoomDrawerController zoomDrawerController;
  const MenuPage(
      {super.key, required this.context, required this.zoomDrawerController});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> screenStringTest = ["Home", "Explore", "Profile", "Settings"];
  List<IconData> screenIconTest = [
    Icons.apps,
    Icons.search,
    Icons.person,
    Icons.settings
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstans.mainWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                widget.zoomDrawerController.toggle?.call();
              },
              icon: const Icon(
                Icons.close,
                color: AppConstans.mainBlack,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: AppConstans.appBackground,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "User Name",
                        style: TextStyle(
                          color: AppConstans.mainBlack,
                          fontSize: 25.0,
                          fontFamily: FontConstans.poppinsMedium,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(4, (index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          debugPrint("${screenStringTest[index]} Tapped");
                        },
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        child: ListTile(
                          leading: Icon(
                            screenIconTest[index],
                            color: Theme.of(context).primaryColor,
                            size: 27,
                          ),
                          title: Text(
                            screenStringTest[index],
                            style: const TextStyle(
                              fontSize: 17.0,
                              fontFamily: FontConstans.poppinsMedium,
                              color: AppConstans.mainBlack,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 70),
                  child: TextButton.icon(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor.withOpacity(0.5)),
                      side: MaterialStateProperty.all(
                        BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        debugPrint("Signed Out");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.logout,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
