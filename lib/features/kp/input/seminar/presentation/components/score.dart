import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class Score extends StatelessWidget {
  const Score({super.key, this.sikap=0, this.materi=0, this.laporan=0, this.total=0});

  final int sikap, materi, laporan, total;

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
                'Nilai Sikap',
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
                'Nilai Penguasaan Materi',
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
                'Nilai Isi Laporan',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                laporan.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Jumlah Akhir :',
                style: textPrimary.copyWith(
                  fontSize: 10
                )
              ),
              SizedBox(width: 10),
              Text(
                total.toString(),
                style: textPrimary.copyWith(fontSize: 10)
              )
            ]
          )
        ]
      )
    );
  }
}
