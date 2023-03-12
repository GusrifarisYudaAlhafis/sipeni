import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/judul.png'),
        SizedBox(width: 15),
        Text(
          title,
          style: textThin.copyWith(
            fontSize: 10
          )
        )
      ]
    );
  }
}
