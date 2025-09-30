import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.obscurText = false,
    this.controller,
    this.validator,
    this.hintStyle,
    this.keyboardType,
    this.border,
    this.readOnly,
    this.onTap,
    this.inputFormatters,
    this.minLines,
    this.filled,
    this.fillColor,
  });

  final double? border;

  final String? hint;
  bool? filled;
  Color? fillColor;

  final int? maxLines;

  final void Function(String?)? onSaved;

  final void Function(String)? onChanged;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final Color? enabledBorderColor;

  final Color? focusedBorderColor;

  bool obscurText;

  TextEditingController? controller;

  String? Function(String?)? validator;

  TextStyle? hintStyle;

  TextInputType? keyboardType;

  final bool? readOnly;

  final Function()? onTap;

  List<TextInputFormatter>? inputFormatters;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,

      keyboardType: keyboardType,

      maxLines: maxLines,

      minLines: minLines,

      obscureText: obscurText,

      validator: validator,

      controller: controller,

      onChanged: onChanged,

      onSaved: onSaved,

      readOnly: readOnly ?? false,

      cursorColor: Colors.grey,

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: hintStyle ?? const TextStyle(color: Colors.grey),

        border: buildBorder(),

        enabledBorder: buildBorder(enabledBorderColor),

        focusedBorder: buildBorder(focusedBorderColor),

        errorBorder: buildBorder(Colors.red),

        focusedErrorBorder: buildBorder(Colors.red),

        suffixIcon: suffixIcon,

        prefixIcon: prefixIcon,
        filled: filled,
        fillColor: fillColor,
      ),

      onTap: onTap,
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: border == null
          ? BorderRadius.circular(10)
          : BorderRadius.circular(border!),

      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
