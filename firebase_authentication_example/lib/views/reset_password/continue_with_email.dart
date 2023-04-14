import '../../export.dart';

class ContinueWithEmail extends StatefulWidget {
  const ContinueWithEmail({super.key});

  @override
  State<ContinueWithEmail> createState() => _ContinueWithEmailState();
}

class _ContinueWithEmailState extends State<ContinueWithEmail> {
  final TextEditingController _emailController = TextEditingController();
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
              Image.asset("assets/images/forgot.png"),
              const SizedBox(height: 40),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstans.mainWhite,
                  fontFamily: FontConstans.poppinsMedium,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Don’t worry, it happens to the best of\nus.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: BuildTextField(
                  textLabel: 'example@gmail.com',
                  icon: Icons.email_outlined,
                  controller: _emailController,
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 90, left: 50),
                    child: TryGestureDetector(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 22),
                    child: ButtonAction(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckYourMail(),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}