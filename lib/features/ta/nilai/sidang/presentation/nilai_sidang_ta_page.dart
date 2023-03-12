import 'package:flutter/material.dart';
import 'package:sipeni/features/ta/nilai/sidang/presentation/components/green_background.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/header_widget.dart';

class NilaiSidangTAPage extends StatelessWidget {
  static const String routeName = '/nilai-sidang-ta';
  const NilaiSidangTAPage({super.key});

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
                  'Detail Nilai Sidang Mahasiswa :',
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
