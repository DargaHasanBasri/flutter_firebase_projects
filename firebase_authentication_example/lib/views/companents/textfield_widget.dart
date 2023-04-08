import '../../export.dart';

class TextFieldWitget extends StatelessWidget {
  final String textLabel;
  final IconData icon;
  final bool isPasswordType;
  final TextEditingController controller;

  const TextFieldWitget({
    super.key,
    required this.textLabel,
    required this.icon,
    required this.isPasswordType,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: AppConstans.mainWhite,
      style: TextStyle(color: AppConstans.mainWhite.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: AppConstans.secondWhite,
        ),
        labelText: textLabel,
        labelStyle: TextStyle(
          color: AppConstans.mainWhite.withOpacity(0.9),
          fontSize: 12,
          fontFamily: FontConstans.poppinsMedium,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: AppConstans.mainWhite.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}
