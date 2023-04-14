import '../../export.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
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
              const BackgroundImages(),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainWhite,
                  ),
                ),
              ),
              const Text(
                'Signin to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FontConstans.poppinsMedium,
                  color: AppConstans.mainGrey,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 30),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: FontConstans.poppinsMedium,
                      color: AppConstans.mainWhite,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20),
                child: TextFieldWitget(
                  textLabel: "Enter Email",
                  icon: Icons.email_outlined,
                  isPasswordType: false,
                  controller: _emailTextController,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 6, left: 30),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: FontConstans.poppinsMedium,
                      color: AppConstans.mainWhite,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20, right: 20),
                child: TextFieldWitget(
                  textLabel: "Enter Password",
                  icon: Icons.lock_outline,
                  isPasswordType: true,
                  controller: _passwordTextController,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetPassword()),
                  );
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, right: 33),
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: FontConstans.poppinsMedium,
                          color: AppConstans.mainRed,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 45, bottom: 14, left: 30, right: 30),
                child: ActionButton(
                    isLogin: true,
                    onTap: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        debugPrint("Log In");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      }).onError((error, stackTrace) {
                        debugPrint("Error ${error.toString()}");
                      });
                    }),
              ),
              const HaveAccountSignUp(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Image.asset("assets/images/google.png"),
                  const SizedBox(width: 42),
                  Image.asset("assets/images/facebook.png"),
                  const SizedBox(width: 42),
                  Image.asset("assets/images/instagram.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
