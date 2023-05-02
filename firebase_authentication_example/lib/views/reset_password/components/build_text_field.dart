import '../../../export.dart';

class BuildTextField extends StatelessWidget {
  final String textLabel;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType textInputType;

  const BuildTextField({
    super.key,
    required this.textLabel,
    required this.icon,
    required this.controller,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppConstans.mainWhite,
      style: TextStyle(color: AppConstans.mainWhite.withOpacity(0.9)),
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(
            icon,
            color: AppConstans.secondWhite,
          ),
        ),
        labelText: textLabel,
        labelStyle: TextStyle(
          color: AppConstans.mainWhite.withOpacity(0.8),
          fontSize: 15,
          fontFamily: FontConstans.poppinsMedium,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: AppConstans.mainWhite.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
