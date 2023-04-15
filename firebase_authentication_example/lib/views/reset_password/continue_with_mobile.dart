import '../../export.dart';

class ContinueWithMobile extends StatefulWidget {
  const ContinueWithMobile({super.key});

  @override
  State<ContinueWithMobile> createState() => _ContinueWithMobileState();
}

class _ContinueWithMobileState extends State<ContinueWithMobile> {
  final TextEditingController _editingController = TextEditingController();
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
                padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
                child: BuildTextField(
                  textLabel: "12345678",
                  icon: Icons.mobile_friendly,
                  controller: _editingController,
                  textInputType: TextInputType.phone,
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 75, left: 50),
                    child: TryGestureDetector(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 75, left: 22),
                    child: ButtonAction(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckYourMobile(),
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
