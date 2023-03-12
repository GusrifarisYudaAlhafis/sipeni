import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 19,
        left: 28,
        right: 30
      ),
      child: Column(
        children: [
          Text(
            'Sistem Penginputan Nilai KP dan TA',
            style: textSecondary.copyWith(
              fontSize: 18,
              fontWeight: medium
            )
          ),
          SizedBox(height: 27),
          Image.asset('assets/images/logo_uin.png')
        ]
      )
    );
  }
}
