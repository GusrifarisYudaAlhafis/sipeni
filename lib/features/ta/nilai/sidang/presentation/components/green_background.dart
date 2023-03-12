import 'package:flutter/material.dart';
import 'package:sipeni/features/ta/input/sidang/presentation/input_sidang_ta_page.dart';
import 'package:sipeni/features/ta/nilai/sidang/presentation/components/score.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/button_action_widget.dart';
import 'package:sipeni/ui/widgets/date_widget.dart';
import 'package:sipeni/ui/widgets/info_widget.dart';
import 'package:sipeni/ui/widgets/title_widget.dart';

class GreenBackground extends StatelessWidget {
  const GreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 51,
        bottom: 39
      ),
      margin: EdgeInsets.only(top: 270),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(39))
      ),
      child: Container(
        width: 350,
        height: 535,
        padding: EdgeInsets.only(
          left: 16,
          right: 27,
          top: 32
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 4)
            )
          ]
        ),
        child: Column(
          children: [
            InfoWidget(
              nama: 'Tri Handoyo Adi Putra',
              nim: '12050114323',
              status: false
            ),
            SizedBox(height: 15),
            DateWidget(),
            SizedBox(height: 9),
            TitleWidget(
              title: 'UI Sistem Informasi Pengisian Nilai KP dan TA'
            ),
            SizedBox(height: 38),
            Text(
              'Berikut Nilai Sementara Dari Mahasiswa Ini',
              style: textPrimary.copyWith(
                fontSize: 12,
                fontWeight: medium
              )
            ),
            SizedBox(height: 28),
            Score(),
            SizedBox(height: 43),
            ButtonActionWidget(
              title: 'Input',
              onTap: () {
                Navigator.pushNamed(context, InputSidangTAPage.routeName);
              }
            )
          ]
        )
      )
    );
  }
}
