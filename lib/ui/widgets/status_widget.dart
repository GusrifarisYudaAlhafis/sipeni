import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109,
      height: 21,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
       
      ),
      child: Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5),
                Text('Sudah Diinput', style: textBox.copyWith(
                  fontSize: 9,
                ),
                ),
              ],
            )
            
            
          ],
        ),
      )
      //CHILD ROW
     
    );
  }

} 