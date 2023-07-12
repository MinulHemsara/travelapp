import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/widgets/app_text.dart';

import '../colors/colors.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  bool? isIcon;
  IconData? icon;
  final Color backgroundcolor;
  double size;
  final Color bordercolor;


 AppButton({Key? key,
   this.text,
   this.icon,
   this.isIcon=false,
    required this.color,
    required this.backgroundcolor,
    required this.size,
    required this.bordercolor
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
          width: 1.0
        ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundcolor
      ),
      child: isIcon == false ? Center(child: AppText(text: text!,color: color,)):Icon(icon,color: color,),
    );
  }
}
