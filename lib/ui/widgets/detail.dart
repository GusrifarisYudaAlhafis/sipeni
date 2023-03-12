import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/info_widget.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key, });

//  final String roles, judul, tanggal;
//  final bool status;
 

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: Container(
        width: 360,
        height: 95,
        
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4)
            )
          ]
        ),
        child:(
          
          Row(
            children: [
              
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Image(image: AssetImage('assets/icons/roles.png',
                  ),
                  width: 32.43,
                  height: 33,
                  ),
                  
                  SizedBox(height: 13),
                  Container(
                    width: 65,
                    height: 14,
                    child: Text('Pembimbing 1', style: textBox.copyWith(fontSize: 9))),
                  
                  
                  
                ],
              ),
              
              SizedBox(width: 29),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Image(image: AssetImage('assets/icons/judul1.png',
                  ),
                  width: 32.43,
                  height: 33,
                  ),
                  
                  SizedBox(height: 13),
                  Container(
                    width: 122,
                    height: 31,
                    child: Text('Sistem Informasi Pengisian Nilai KP dan TA', style: textBox.copyWith(fontSize: 9))),
                  
                  
                  
                ],
              ),
              SizedBox(width: 17),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Image(image: AssetImage('assets/icons/kalender1.png',
                  ),
                  width: 32.43,
                  height: 33,
                  ),
                  
                  SizedBox(height: 13),
                  Container(
                    width: 122,
                    height: 40,
                    child: Text('Senin, 10 Januari 2023', style: textBox.copyWith(fontSize: 9))),
                  
                  
                  
                ],
              ),
              
            ],
          )
          
        ),
        
       
      ),
      
      
    );
  }
}
