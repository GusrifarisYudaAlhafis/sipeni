import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key, required this.title, required this.desc, this.f_title=18, this.f_desc=12, this.shadow=0.25, required this.onTap});

  final String title, desc;
  final double f_title, f_desc, shadow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 319,
          height: 138,
          padding: EdgeInsets.only(right: 18, left: 15, top: 15, bottom: 28),
          decoration: BoxDecoration(
              color: background, borderRadius: BorderRadius.circular(20), 
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(shadow),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: textBox.copyWith(fontSize: f_title, fontWeight: semiBold)),
              SizedBox(height: 11),
              Text(
                desc,
                style: textBox.copyWith(fontSize: f_desc),
              ),
            ],
          ),
        ));
  }
}
