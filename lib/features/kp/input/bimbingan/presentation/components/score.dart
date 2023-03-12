import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Score extends StatelessWidget {
  const Score({super.key, this.materi=0, this.usaha=0, this.kreativitas=0, this.tanggungJawab=0, this.komunikasi=0});

  final int materi, usaha, kreativitas, tanggungJawab, komunikasi;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 293,
      height: 340,
      padding: EdgeInsets.only(
        top: 22,
        left: 13
      ),
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Text(
            'Silahkan Input Nilai Di bawah Ini',
            style: textThin.copyWith(
              fontSize: 12
            )
          ),
          Row(
            children: [
              Text(
                'Kualitas Materi Kerja Praktek',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                materi.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Usaha',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                usaha.toString(),
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
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Komunikasi Dengan Pembimbing',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                komunikasi.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          )
        ]
      )
    );
  }
}
