import 'package:flutter/material.dart';
import 'package:sipeni/features/kp/presentation/pembimbing/profile_mahasiswa_page.dart';
import 'package:sipeni/ui/theme/theme.dart';

import 'box_list.dart';

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
                BoxList(
                  onTap: () {
                  Navigator.pushNamed(context, ProfileMahasiswaPage.routeName);

                }
                ),
                  
              
                SizedBox(height: 25),
                BoxList(
                  onTap: () {
                  Navigator.pushNamed(context, ProfileMahasiswaPage.routeName);

                }
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}