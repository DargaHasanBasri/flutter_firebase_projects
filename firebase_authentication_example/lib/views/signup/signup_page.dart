import '../../export.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: FontConstans.poppinsMedium,
                    color: AppConstans.mainWhite,
                  ),
                ),
              ),
              const Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: FontConstans.poppinsMedium,
                  color: AppConstans.mainGrey,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 18, left: 30),
                  child: Text(
                    'Username',
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
                  textLabel: "Enter Username",
                  icon: Icons.person_outlined,
                  isPasswordType: false,
                  controller: _usernameTextController,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 6, left: 30),
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 14, left: 30, right: 30),
                child: ActionButton(
                    isLogin: false,
                    onTap: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailTextController.text,
                              password: _passwordTextController.text)
                          .then((value) {
                        debugPrint("Created New Account");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      }).onError((error, stackTrace) {
                        debugPrint("Error ${error.toString()}");
                      });
                    }),
              ),
              const HaveAccountSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
