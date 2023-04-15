import '../../export.dart';

class CheckYourMail extends StatefulWidget {
  const CheckYourMail({super.key});

  @override
  State<CheckYourMail> createState() => _CheckYourMailState();
}

class _CheckYourMailState extends State<CheckYourMail> {
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
              Image.asset("assets/images/with_email.png"),
              const SizedBox(height: 40),
              const Text(
                "Check your mail",
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstans.mainWhite,
                  fontFamily: FontConstans.poppinsMedium,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "We just sent an OTP to your registered\nemail address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainGrey,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  SizedBox(width: 50),
                  CodeTextField(),
                  SizedBox(width: 30),
                  CodeTextField(),
                  SizedBox(width: 30),
                  CodeTextField(),
                  SizedBox(width: 30),
                  CodeTextField(),
                ],
              ),
              const SizedBox(height: 50),
              RichText(
                text: TextSpan(
                  text: 'Didnt get a code?',
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainWhite,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Resend',
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: FontConstans.poppinsMedium,
                        color: AppConstans.mainWhite,
                        decoration: TextDecoration.none,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pop();
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const ConfirmationButton(),
            ],
          ),
        ),
      ),
    );
  }
}
