
import '../../../export.dart';

class HaveAccountSignUp extends StatelessWidget {
  const HaveAccountSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(
            color: AppConstans.secondGrey,
            fontFamily: FontConstans.poppinsMedium,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: AppConstans.mainWhite,
                fontFamily: FontConstans.poppinsMedium,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
