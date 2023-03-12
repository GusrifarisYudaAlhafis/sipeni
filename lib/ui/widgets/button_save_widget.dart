import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class ButtonSaveWidget extends StatelessWidget {
  const ButtonSaveWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          title,
          style: textThin.copyWith(
            fontSize: 12,
            fontWeight: medium
          )
        )
      )
    );
  }
}
