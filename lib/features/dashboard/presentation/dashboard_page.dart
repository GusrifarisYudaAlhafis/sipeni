import 'package:flutter/material.dart';

import 'package:sipeni/features/mahasiswa/presentation/mahasiswa_page.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/box_widget.dart';

import '../../../ui/widgets/header_widget.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';
  
  const DashboardPage({super.key});

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
              SizedBox(height: 24),
               BoxWidget(
                title: 'Selamat Datang di Sistem Penginputan Nilai KP dan TA ',
                desc: 'Tempat dimana Bapak/Ibu melakukan pengisian nilai Kerja Praktik atau Tugas Akhir',
                f_title: 11,
                f_desc: 11,
                shadow: 0.15,
                onTap: () {
                },),
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.only(left:12),
                  child: Text('Kolom Penilaian Saya', style: textPrimary.copyWith(
                  fontSize: 16, fontWeight: semiBold, 
                  )),
                  
                ),
                SizedBox(height: 22),
                BoxWidget(title: 'Input Nilai Kerja Praktek',
                desc:'Silahkan melakukan penginputan Nilai Kerja Praktik sebagai Pembimbing, Penguji maupun Perwakilan Instansi disini',
                onTap: () {
                  Navigator.pushNamed(context, MahasiswaPage.routeName);

                },
                ),
                
                
                SizedBox(height: 29),
                BoxWidget(title: 'Input Nilai Tugas Akhir',
                desc:'Silahkan melakukan penginputan Nilai Tugas Akhir sebagai Ketua Sidang, Pembimbing, Penguji maupun Perwakilan Instansi disini',
                 onTap: () {
                  Navigator.pushNamed(context, DashboardPage.routeName);

                },)
            ]
          )
        ]
      )
    );
  }
}
