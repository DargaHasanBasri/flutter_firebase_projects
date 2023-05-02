
import '../../../../export.dart';

class HaveAccountSignIn extends StatelessWidget {
  const HaveAccountSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account?",
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
              MaterialPageRoute(builder: (context) => const SignInPage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "Sign In",
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
