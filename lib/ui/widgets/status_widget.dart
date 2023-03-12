import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key, required this.status});

  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 12,
      padding: EdgeInsets.only(
        left: 3,
        right: 4,
        top: 1,
        bottom: 2
      ),
      decoration: BoxDecoration(
        color: backgroundStatus,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: status ? succes : red,
              borderRadius: BorderRadius.circular(50)
            )
          ),
          SizedBox(width: 3),
          Text(
            status ? 'Sudah Diinput' : 'Belum Diinput',
            style: textBox.copyWith(fontSize: 6),
            textAlign: TextAlign.center
          )
        ]
      )
    );
  }
}
