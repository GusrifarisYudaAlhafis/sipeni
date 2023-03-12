import 'package:flutter/material.dart';
import 'package:sipeni/features/kp/input/bimbingan/presentation/components/score.dart';
import 'package:sipeni/features/kp/nilai/bimbingan/presentation/nilai_bimbingan_kp_page.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/button_save_widget.dart';
import 'package:sipeni/ui/widgets/info_widget.dart';

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
            SizedBox(height: 32),
            Score(),
            SizedBox(height: 27),
            ButtonSaveWidget(
              title: 'Simpan',
              onTap: () {
                Navigator.pushNamed(context, NilaiBimbinganKPPage.routeName);
              }
            )
          ]
        )
      )
    );
  }
}
