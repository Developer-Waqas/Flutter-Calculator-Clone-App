import 'package:flutter/material.dart';

import '../../constants/app_style/app_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPress;
   const CustomButton({super.key, required this.text,this.color=const Color(0xffA5A5A5),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(child: Text(text,style: style3,)),
          ),
        ),
      ),
    );
  }
}
