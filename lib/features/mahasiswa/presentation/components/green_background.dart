import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

import 'box.dart';

class GreenBackground extends StatelessWidget {
  const GreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 36, bottom: 51),
      margin: EdgeInsets.only(top: 222),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(39)),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, right: 6),
            child: Text(
              'Dibawah ini merupakan daftar mahasiswa bimbingan maupun mahasiswa yang diuji.',
              style: textBox.copyWith(
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 48),
          SingleChildScrollView(
            child: Column(
              children: [
                Box(),
                SizedBox(height: 25),
                Box(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
