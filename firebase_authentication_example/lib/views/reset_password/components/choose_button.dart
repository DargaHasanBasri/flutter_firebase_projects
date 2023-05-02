import '../../../export.dart';

class ChooseButton extends StatelessWidget {
  final IconData icon;
  final String contentInfo;
  final Function onTap;
  const ChooseButton({
    super.key,
    required this.icon,
    required this.contentInfo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: AppConstans.mainWhite.withOpacity(0.3),
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Ink(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: AppConstans.mainWhite.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Icon(icon),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    contentInfo,
                    style: TextStyle(
                      color: AppConstans.mainWhite.withOpacity(0.8),
                      fontSize: 15,
                      fontFamily: FontConstans.poppinsMedium,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
