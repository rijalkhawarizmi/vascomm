import 'package:flutter/material.dart';

import '../../core/style/color_app.dart';
import '../../core/style/fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget? icon;
  final bool? isLoading;
  final Color? color;
  final double? height;
  final double? widht;
  final double? borderRadius;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.icon,
      this.color,
      this.height,
      this.widht,
      this.borderRadius,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color ??  ColorApp.navyBlack,
          shape: RoundedRectangleBorder(borderRadius:borderRadius != null ?  BorderRadius.circular(borderRadius!):BorderRadius.circular(8)),
          minimumSize: height !=null || widht != null ? Size(widht ?? 0, height ?? 0): Size( double.infinity, 50)),
      onPressed: onPressed,
      child: isLoading == true
          ? Center(
              child: CircularProgressIndicator(color: ColorApp.white,),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                Text(text,
                    style: FontApp.fontGilroyW600
                        .copyWith(fontSize: 16, color: ColorApp.white)),
                icon != null ? icon! : const SizedBox.shrink()
              ],
            ),
    );
  }
}
