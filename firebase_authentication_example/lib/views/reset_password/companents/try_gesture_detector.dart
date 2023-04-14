import '../../../export.dart';

class TryGestureDetector extends StatelessWidget {
  const TryGestureDetector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Text(
        "Try another way",
        style: TextStyle(
          color: AppConstans.mainWhite,
          fontSize: 16,
          fontFamily: FontConstans.poppinsMedium,
        ),
      ),
    );
  }
}
