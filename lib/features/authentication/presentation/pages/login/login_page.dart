import 'package:flutter/material.dart';
import 'package:sipeni/features/authentication/presentation/pages/login/components/header.dart';
import 'package:sipeni/ui/theme/theme.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 408,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(39),
              ),
            ),
          ),
          ListView(
            children: [
              Header(),
            ],
          )
        ],
      ),
    );
  }
}
