import 'package:firebase_authentication_example/export.dart';

class CheckYourMobile extends StatefulWidget {
  const CheckYourMobile({super.key});

  @override
  State<CheckYourMobile> createState() => _CheckYourMobileState();
}

class _CheckYourMobileState extends State<CheckYourMobile> {
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
              Image.asset("assets/images/with_mobile.png"),
              const SizedBox(height: 40),
              const Text(
                "Check your mobile phone",
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstans.mainWhite,
                  fontFamily: FontConstans.poppinsMedium,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "We just sent an OTP to your registered\nphone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
