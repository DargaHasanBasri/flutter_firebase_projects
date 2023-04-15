import '../../../export.dart';

class ConfirmationButton extends StatelessWidget {
  const ConfirmationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 330,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: AppConstans.mainBlack,
        ),
        child: const Text(
          "Verify OTP",
          style: TextStyle(
            fontSize: 20,
            fontFamily: FontConstans.poppinsMedium,
            color: AppConstans.mainWhite,
          ),
        ),
      ),
    );
  }
}
