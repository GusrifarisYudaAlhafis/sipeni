import 'package:flutter/material.dart';
import 'package:sipeni/features/authentication/presentation/login_page.dart';
import 'package:sipeni/features/dashboard/presentation/dashboard_page.dart';
import 'package:sipeni/features/kp/mahasiswa/presentation/mahasiswa_kp_page.dart';
import 'package:sipeni/features/kp/profile/presentation/profile_mahasiswa_kp_page.dart';
import 'package:sipeni/features/ta/mahasiswa/presentation/mahasiswa_ta_page.dart';
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
      }
    );
  }
}
