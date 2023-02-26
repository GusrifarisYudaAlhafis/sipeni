import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44,
        margin: EdgeInsets.only(
          left: 39,
          right: 38
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          title,
          style: textButton.copyWith(
            fontSize: 18,
            fontWeight: semiBold
          )
        )
      )
    );
  }
}
