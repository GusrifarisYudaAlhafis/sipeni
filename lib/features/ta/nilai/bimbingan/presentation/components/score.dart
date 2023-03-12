import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Score extends StatelessWidget {
  const Score({super.key, this.motivasi=0, this.keuletan=0, this.kreativitas=0, this.ketepatan=0, this.tanggungJawab=0});

  final int motivasi, keuletan, kreativitas, ketepatan, tanggungJawab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297,
      height: 181,
      padding: EdgeInsets.only(
        top: 18,
        left: 15
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Motivasi dan Semangat',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                motivasi.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Keuletan Dalam Penelitian',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                keuletan.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Kreativitas',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                kreativitas.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Ketepatan Waktu Penelitian Sesuai Jadwal',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                ketepatan.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Tanggung Jawab',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                tanggungJawab.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          )
        ]
      )
    );
  }
}
