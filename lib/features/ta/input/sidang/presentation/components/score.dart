import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Score extends StatelessWidget {
  const Score({super.key, this.keislaman=0, this.sikap=0, this.kemampuan=0, this.penguasaan=0, this.urgensi=0, this.relevansi=0});

  final int keislaman, sikap, kemampuan, penguasaan, urgensi, relevansi;

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
        color: grey,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Kompetensi Dasar Keislaman',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                keislaman.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Sikap (Attitude) Presentasi',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                sikap.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Kemampuan Presentasi',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                kemampuan.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Penguasaan Terhadap Materi ',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                penguasaan.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Urgensi Terhadap Masalah Penelitian',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                urgensi.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Relevansi Referensi Dengan Judul Penelitian',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                relevansi.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          )
        ]
      )
    );
  }
}
