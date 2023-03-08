import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';
import 'package:sipeni/ui/widgets/status_widget.dart';

class BoxList extends StatelessWidget {
  const BoxList ({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 350,
      height: 93,
      decoration: BoxDecoration(

        color: white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
          
        ],
        
      ),
      
      //CHILD ROW
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Row(
            children:[
              Container(
                padding: EdgeInsets.only(left: 16, top: 20, bottom: 41),
                child: Image.asset('assets/images/profile.png'),
              ),
              SizedBox(width: 16
              ),
              
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Nama Mahasiswa', style: textBox.copyWith(
                      fontSize: 14, 
                    ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Text('NIM', style: textBox.copyWith(
                      fontSize: 10, 
                    ),
                    ),
                  ),
                  
                  
                ],
              ),
              SizedBox(width: 35),
              StatusWidget()
            ]
          )
          
        ]
      ),
    );
  }

} 