import 'package:flutter/material.dart';
import 'package:sipeni/features/authentication/presentation/login_page.dart';
import 'package:sipeni/features/dashboard/presentation/dashboard_page.dart';
import 'package:sipeni/features/kp/input/bimbingan/presentation/input_bimbingan_kp_page.dart';
import 'package:sipeni/features/kp/input/seminar/presentation/input_seminar_kp_page.dart';
import 'package:sipeni/features/kp/mahasiswa/presentation/mahasiswa_kp_page.dart';
import 'package:sipeni/features/kp/nilai/bimbingan/presentation/nilai_bimbingan_kp_page.dart';
import 'package:sipeni/features/kp/nilai/seminar/presentation/nilai_seminar_kp_page.dart';
import 'package:sipeni/features/kp/profile/presentation/profile_mahasiswa_kp_page.dart';
import 'package:sipeni/features/ta/input/bimbingan/presentation/input_bimbingan_ta_page.dart';
import 'package:sipeni/features/ta/input/sidang/presentation/input_sidang_ta_page.dart';
import 'package:sipeni/features/ta/mahasiswa/presentation/mahasiswa_ta_page.dart';
import 'package:sipeni/features/ta/nilai/bimbingan/presentation/nilai_bimbingan_ta_page.dart';
import 'package:sipeni/features/ta/nilai/sidang/presentation/nilai_sidang_ta_page.dart';
import 'package:sipeni/features/ta/profile/presentation/profile_mahasiswa_ta_page.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Penginputan Nilai UIN SUSKA RIAU',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        DashboardPage.routeName: (context) => const DashboardPage(),
        MahasiswaKPPage.routeName: (context) => const MahasiswaKPPage(),
        MahasiswaTAPage.routeName: (context) => const MahasiswaTAPage(),
        ProfileMahasiswaKPPage.routeName: (context) => const ProfileMahasiswaKPPage(),
        ProfileMahasiswaTAPage.routeName: (context) => const ProfileMahasiswaTAPage(),
        NilaiBimbinganKPPage.routeName: (context) => const NilaiBimbinganKPPage(),
        NilaiBimbinganTAPage.routeName: (context) => const NilaiBimbinganTAPage(),
        NilaiSeminarKPPage.routeName: (context) => const NilaiSeminarKPPage(),
        NilaiSidangTAPage.routeName: (context) => const NilaiSidangTAPage(),
        InputBimbinganKPPage.routeName: (context) => const InputBimbinganKPPage(),
        InputBimbinganTAPage.routeName: (context) => const InputBimbinganTAPage(),
        InputSeminarKPPage.routeName: (context) => const InputSeminarKPPage(),
        InputSidangTAPage.routeName: (context) => const InputSidangTAPage()
      }
    );
  }
}
