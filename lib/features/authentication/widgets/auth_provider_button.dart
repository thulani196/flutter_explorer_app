import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthProviderButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool isIconProvided;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback actionCallback;

  const AuthProviderButton({
    super.key,
    required this.text,
    this.icon,
    required this.isIconProvided,
    required this.height,
    required this.buttonColor,
    required this.textColor,
    required this.actionCallback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: actionCallback,
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: textColor,
            ),
            icon != null
                ? const SizedBox(
                    width: 5,
                  )
                : const SizedBox(),
            Text(text,
                style: TextStyle(
                    color: textColor,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal))
          ],
        )),
      ),
    );
  }
}
