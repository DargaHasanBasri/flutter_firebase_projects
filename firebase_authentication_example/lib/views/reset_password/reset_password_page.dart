import '../../export.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppConstans.appBackground,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: BackArrowButton(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Password Reset",
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainWhite,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Choose how you want to reset your\npassword",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ChooseButton(
                  contentInfo: "Continue with email",
                  icon: Icons.email_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContinueWithEmail(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ChooseButton(
                  contentInfo: "Continue with mobile",
                  icon: Icons.mobile_friendly_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContinueWithMobile(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ChooseButton(
                  contentInfo: "Continue with seed phrase",
                  icon: Icons.book_outlined,
                  onTap: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContinueWithMobile(),
                      ),
                    ); */
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
