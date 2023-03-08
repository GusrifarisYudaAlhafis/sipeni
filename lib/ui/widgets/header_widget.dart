import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2),
      margin: EdgeInsets.only(top: 110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Assalamualaikum',
            style: textPrimary.copyWith(
              fontSize: 16,
              fontWeight: medium
            )
          ),
          SizedBox(height: 1),
          Text(
            'User 1',
            style: textPrimary.copyWith(
              fontSize: 20,
              fontWeight: semiBold
            )
          )
        ]
      )
    );
  }
}
