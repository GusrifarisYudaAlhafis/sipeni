import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
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
            children: [
              
              ProfileWidget(),
              Container(
                alignment: Alignment.center,
                  width: 64,
                  height: 12,
                  padding:
                      EdgeInsets.only(left: 3, right: 4, top: 1, bottom: 2),
                  decoration: BoxDecoration(
                      color: backgroundStatus,
                      borderRadius: BorderRadius.circular(10)),
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
              SizedBox(height: 20),
              DetailWidget(
               
              ),
              Text('Pilih Input Nilai Kerja Praktik ',
                  style: textPrimary.copyWith(fontSize: 16, color: black),
                ),
                  
            ],
            
          )
        ],
      ),
    );
  }
}
