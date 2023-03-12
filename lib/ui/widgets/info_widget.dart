import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/status_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, this.photo='assets/images/profile.png', required this.nama, required this.nim, required this.status});

  final String nama, nim, photo;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(photo),
        ),
        SizedBox(width: 13),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: textBox.copyWith(fontSize: 14)
            ),
            SizedBox(height: 2),
            Text(
              nim,
              style: textBox.copyWith(fontSize: 10)
            )
          ]
        ),
        SizedBox(width: 38),
        Column(
          children: [
            StatusWidget(
              status: status
            ),
            SizedBox(height: 8),
            Text(
              'Pembimbing 1',
              style: textBox.copyWith(fontSize: 10)
            )
          ]
        )
      ]
    );
  }
}
