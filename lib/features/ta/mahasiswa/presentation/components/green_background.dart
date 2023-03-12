import 'package:flutter/material.dart';
import 'package:sipeni/features/ta/profile/presentation/profile_mahasiswa_ta_page.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/box_list_widget.dart';

class GreenBackground extends StatelessWidget {
  const GreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 36,
        bottom: 51
      ),
      margin: EdgeInsets.only(top: 222),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(39))
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Di bawah ini merupakan daftar mahasiswa bimbingan maupun mahasiswa yang diuji.',
              style: textInfo.copyWith(fontSize: 15),
              textAlign: TextAlign.justify
            )
          ),
          SizedBox(height: 33),
          SingleChildScrollView(
            child: Column(
              children: [
                BoxListWidget(
                  photo: 'assets/images/profile.png',
                  nama: 'Tri Handoyo Adi Putra',
                  nim: '12050114323',
                  status: true,
                  onTap: () {
                    Navigator.pushNamed(context, ProfileMahasiswaTAPage.routeName);
                  }
                ),
                SizedBox(height: 25),
                BoxListWidget(
                  photo: 'assets/images/profile.png',
                  nama: 'Ibnu Sahid',
                  nim: '12050114323',
                  status: false,
                  onTap: () {
                    Navigator.pushNamed(context, ProfileMahasiswaTAPage.routeName);
                  }
                )
              ]
            )
          )
        ]
      )
    );
  }
}
