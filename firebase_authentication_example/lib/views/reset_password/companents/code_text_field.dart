import '../../../export.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppConstans.mainWhite),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLength: 1,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppConstans.mainBlack,
              width: 3,
            ),
          ),
        ),
        onChanged: (value) {
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        buildCounter: (
          BuildContext context, {
          int? currentLength,
          int? maxLength,
          bool? isFocused,
        }) =>
            null,
      ),
    );
  }
}
