import 'package:flutter/material.dart';
import 'colors.dart';



class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hint;
  double? width;
  double? height;
  late bool obscure;
  String? label;
  TextStyle? hintStyle;
  String? headLine;
  IconData? icon;
  Widget? prefixIconWidget;
  Widget? iconWidget;
  Color? labelColor;
  TextInputType? textType;
  Function(String val)? onChange;
  Function()? iconPressed;
  Function()? onPressed;
  bool? enabled;
  FocusNode? focusNode;
  int? maxLines;
  int? minLines;
  int? maxLength;
  FormFieldValidator<String>? validatorTextField;

  CustomTextField(
      {this.controller,
        this.hint = "",
        this.width,
        this.prefixIconWidget,
        this.height,
        this.obscure = false,
        this.label,
        this.hintStyle,
        this.icon,
        this.iconWidget,
        this.enabled = true,
        this.labelColor,
        this.textType,
        this.onPressed,
        this.focusNode,
        this.maxLines,
        this.minLines,
        this.headLine,
        this.iconPressed,
        this.maxLength,
        this.onChange,
        this.validatorTextField,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        enabled: enabled,
        keyboardType: textType ?? TextInputType.text,
        controller: controller,
        focusNode: focusNode,
        onChanged: onChange,
        obscureText: obscure,
        style:  const TextStyle(color: Colors.black),
        cursorColor: colors.blue,
        decoration: InputDecoration(
            hintText: hint ?? "",
            hintStyle: hintStyle ??
                const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
            labelText: label,
            labelStyle: const TextStyle(fontSize: 14, color: colors.blue),
            contentPadding: const EdgeInsets.only(top: 8, right: 8, left: 8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color:colors.blue),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: colors.blue),
            ),
            prefixIcon: prefixIconWidget,
            suffixIcon: iconWidget == null ? (
                icon == null ? null
                : InkWell(
                  onTap: iconPressed ?? () {},
                  child: Icon(
                    icon,
                    size: 18,
                    color: colors.blue,
                  )))
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    iconWidget!,
              ],
            )),
        validator: validatorTextField,
      ),
    );
  }
}