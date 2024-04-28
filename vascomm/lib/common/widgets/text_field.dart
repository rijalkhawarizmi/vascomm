import 'package:flutter/material.dart';

import '../../core/style/color_app.dart';
import '../../core/style/fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final String? label2;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final Widget? prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.label,
    this.label2,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label ?? "",
              style: FontApp.fontGilroyW600
                  .copyWith(fontSize: 14, color: ColorApp.black100),
            ),
            Text(
              label2 ?? "",
              style: FontApp.fontProximaW600
                  .copyWith(fontSize: 14, color: ColorApp.grey400),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              color: ColorApp.white,
              border: const Border(
                top: BorderSide(color: Colors.transparent),
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0, 16),
                    blurRadius: 24,
                    spreadRadius: 0)
              ]),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                hintText: hintText,
                hintStyle: FontApp.fontProximaW400
                    .copyWith(fontSize: 12, color: ColorApp.grey100),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
          ),
        ),
      ],
    );
  }
}
