import '../../export.dart';

class ActionButton extends StatefulWidget {
  final bool isLogin;
  final Function onTap;
  const ActionButton({
    super.key,
    required this.isLogin,
    required this.onTap,
  });

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          widget.onTap();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: AppConstans.mainBlack,
        ),
        child: Text(
          widget.isLogin ? 'LOG IN' : 'SIGN IN',
          style: const TextStyle(
            color: AppConstans.mainWhite,
            fontSize: 20,
            fontFamily: FontConstans.poppinsMedium,
          ),
        ),
      ),
    );
  }
}
