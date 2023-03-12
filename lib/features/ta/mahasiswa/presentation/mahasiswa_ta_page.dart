import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/header_widget.dart';

import 'components/green_background.dart';

class MahasiswaTAPage extends StatelessWidget {
  static const String routeName = '/mahasiswa-ta';
  const MahasiswaTAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 90,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon.png'),
                  fit: BoxFit.cover
                )
              )
            )
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 28),
            children: [
              HeaderWidget(),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 2),
                child: Text(
                  'Daftar Mahasiswa Tugas Akhir',
                  style: textPrimary.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold 
                  )
                )
              )
            ]
          ),
          GreenBackground()
        ]
      )
    );
  }
}
