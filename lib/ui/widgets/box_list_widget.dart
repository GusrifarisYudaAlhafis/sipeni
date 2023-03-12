import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/info_widget.dart';

class BoxListWidget extends StatelessWidget {
  const BoxListWidget({super.key, this.photo='assets/images/profile.png', required this.nama, required this.nim, required this.status, required this.onTap});

  final String nama, nim, photo;
  final bool status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 93,
        padding: EdgeInsets.only(
          left: 16,
          right: 30,
          top: 20,
          bottom: 34
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4)
            )
          ]
        ),
        child: InfoWidget(
          photo: photo,
          nama: nama,
          nim: nim,
          status: status
        )
      )
    );
  }
}
