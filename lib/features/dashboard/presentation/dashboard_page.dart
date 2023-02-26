import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Dashboard Page'),
      ),
    );
  }
}
