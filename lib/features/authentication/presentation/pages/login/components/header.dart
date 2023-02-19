import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 290,
        left: 28,
        right: 30,
        bottom: 52,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        children: [
          Text(
            'Selamat Datang',
            style: textPrimary.copyWith(
              fontSize: 24,
              fontWeight: medium,
            ),
          ),
          Text(
            'Silahkan Login Untuk Mengakses Aplikasi Ini',
            style: textSecondary.copyWith(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
