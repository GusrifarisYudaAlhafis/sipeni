import 'package:flutter/material.dart';
import 'package:sipeni/features/kp/input/bimbingan/presentation/input_bimbingan_kp_page.dart';
import 'package:sipeni/features/kp/input/seminar/presentation/input_seminar_kp_page.dart';
import 'package:sipeni/features/kp/nilai/bimbingan/presentation/nilai_bimbingan_kp_page.dart';
import 'package:sipeni/features/kp/nilai/seminar/presentation/nilai_seminar_kp_page.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/box_widget.dart';
import 'package:sipeni/ui/widgets/detail.dart';
import 'package:sipeni/ui/widgets/profile_widget.dart';
import 'package:sipeni/ui/widgets/status_widget.dart';

class ProfileMahasiswaKPPage extends StatelessWidget {
  static const String routeName = '/profile-mahasiswa-kp';
  const ProfileMahasiswaKPPage({super.key});

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
                          fit: BoxFit.cover)))),
          ListView(
            padding: EdgeInsets.only(left: 20, right: 20),

            children: [
              
              
              ProfileWidget(),
              SizedBox(height: 16),
              Container(

                //margin: EdgeInsets.only(left: 136, right: 145, top: 16),
                
                  width: 64,
                    
                  padding:
                      EdgeInsets.only(left: 6, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: background,
                      
                      borderRadius: BorderRadius.circular(10)
                      ),
                      
                  child: Row(children: [
                    Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: succes,
                            borderRadius: BorderRadius.circular(50))),
                    SizedBox(width: 3),
                    Text('Sudah Diinput',
                        style: textBox.copyWith(fontSize: 6),
                        textAlign: TextAlign.center)
                  ])
                  ),
              SizedBox(height: 28),
              DetailWidget(
               
              ),
              SizedBox(height: 43),
              Text('Pilih Input Nilai Kerja Praktik ',
                  style: textPrimary.copyWith(fontSize: 16, fontWeight: semiBold),
                ),
              SizedBox(height: 33),
              BoxWidget(
                title: 'Input Nilai Seminar Kerja Praktik', 
                desc: 'Silahkan melakukan penginputan Nilai Seminar Kerja Praktik sebagai Pembimbing mahasiswa disini', 
                onTap: () {
                  Navigator.pushNamed(context, NilaiSeminarKPPage.routeName);
                }),
              SizedBox(height: 29),
              BoxWidget(
                title: 'Input Nilai Bimbingan Kerja Praktik', 
                desc: 'Silahkan melakukan penginputan Nilai Bimbingan Kerja Praktik sebagai Pembimbing mahasiswa disini', 
                onTap: () {
                  Navigator.pushNamed(context, NilaiBimbinganKPPage.routeName);
                }),
                  
            ],
            
          )
        ],
      ),
    );
  }
}
