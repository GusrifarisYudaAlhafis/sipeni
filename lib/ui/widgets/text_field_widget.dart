import 'package:flutter/material.dart';
import 'package:sipeni/ui/theme/theme.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.label, required this.hint, required this.controller, this.isObsecure = false});

  final String label, hint;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 39,
        right: 38
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textPrimary.copyWith(
              fontSize: 18,
              fontWeight: semiBold
            )
          ),
          SizedBox(height: 9),
          TextField(
            controller: controller,
            obscureText: isObsecure,
            style: textPrimary.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 10
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: primary)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: primary)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: primary)
              ),
              hintText: hint,
              hintStyle: textHint.copyWith(
                fontSize: 16,
                fontWeight: medium
              )
            )
          )
        ]
      )
    );
  }
}
