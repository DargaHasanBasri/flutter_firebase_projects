import '../../export.dart';

class BackgroundImages extends StatelessWidget {
  const BackgroundImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset("assets/images/square1.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 100),
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/square2.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/square3.png"),
          ),
        ),
      ],
    );
  }
}
