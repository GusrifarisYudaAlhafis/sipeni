import 'package:flutter/material.dart';
import 'package:sipeni/features/authentication/presentation/components/header.dart';
import 'package:sipeni/features/dashboard/presentation/dashboard_page.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/button_widget.dart';
import 'package:sipeni/ui/widgets/text_field_widget.dart';

import 'components/content.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nipController = TextEditingController();

  @override
  void dispose() {
    nipController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 376,
            decoration: BoxDecoration(
              color: background,
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(39))
            )
          ),
          ListView(
            children: [
              const Header(),
              const Content(),
              SizedBox(height: 27),
              TextFieldWidget(
                label: 'NIP Dosen',
                hint: '11200000000999',
                controller: nipController
              ),
              SizedBox(height: 27),
              ButtonWidget(
                title: 'LOGIN',
                onTap: () {
                  Navigator.pushNamed(context, DashboardPage.routeName);
                }
              )
            ]
          )
        ]
      )
    );
  }
}
