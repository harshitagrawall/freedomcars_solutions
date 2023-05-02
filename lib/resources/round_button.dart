import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  const Me({Key? key}) : super(key: key);

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class RoundButton extends StatelessWidget {

  final String text;
  var ontap;
  final bool loading;
  double fontSize;
  Color textColor;
  Color backgroundColor;

  RoundButton({
    Key? key,
    required this.text,
    required this.ontap,
    required this.fontSize,
    required this.textColor,
    required this.backgroundColor,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: backgroundColor),
            onPressed: ontap,
            child: loading
                ? const CircularProgressIndicator(
              color: Colors.white,
            )
                : Text(
              text,
              style: TextStyle(color: textColor, fontSize: fontSize),
            )),
      ),
    );
  }
}