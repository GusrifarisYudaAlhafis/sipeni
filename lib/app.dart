import 'package:flutter/material.dart';
import 'package:sipeni/features/authentication/presentation/pages/login/login_page.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Penginputan Nilai UIN SUSKA RIAU',
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}
