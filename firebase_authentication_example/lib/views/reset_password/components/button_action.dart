import '../../../export.dart';

class ButtonAction extends StatelessWidget {
  final Function onTap;
  const ButtonAction({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 160,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: AppConstans.mainBlack,
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                "Continue",
                style: TextStyle(
                  color: AppConstans.mainWhite,
                  fontSize: 15,
                  fontFamily: FontConstans.poppinsMedium,
                ),
              ),
            ),
            Icon(
              Icons.arrow_right,
              color: AppConstans.mainWhite,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
