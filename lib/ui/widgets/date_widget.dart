import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/kalender.png'),
        SizedBox(width: 15),
        Text(
          'Senin, 10 Januari 2023',
          style: textThin.copyWith(
            fontSize: 10
          )
        )
      ]
    );
  }
}
