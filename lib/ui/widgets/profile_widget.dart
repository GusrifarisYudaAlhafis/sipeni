import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Profile Mahasiswa',
            style: textPrimary.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 14),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
            radius: 47,
          ),
          SizedBox(height: 13),
          Text(
            'Tri Handoyo Adi Putra',
            style: textBox.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 7),
          Text(
            '12050114323',
            style: textBox.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),

        ],
      ),
      
      
    );
  }
}