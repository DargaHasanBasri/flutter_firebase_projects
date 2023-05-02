import '../../export.dart';

class SuccessfulLinkSend extends StatelessWidget {
  const SuccessfulLinkSend({super.key});

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
              const SizedBox(height: 80),
              Image.asset("assets/images/img-successful.png"),
              const SizedBox(height: 50),
              const Text(
                "Email sent successfully",
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstans.mainWhite,
                  fontFamily: FontConstans.poppinsMedium,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "You can now log in to your account",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppConstans.mainWhite,
                    fontFamily: FontConstans.poppinsMedium,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Padding(
                  padding: const EdgeInsets.only(left: 130, right: 120),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.zero),
                    child: Material(
                      color: AppConstans.appBackground,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Login Now",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppConstans.mainWhite,
                                  fontFamily: FontConstans.poppinsMedium,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_right_alt,
                                color: AppConstans.mainWhite,
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
