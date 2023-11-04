import 'package:flutter/material.dart';


Widget createTextField({
  required TextEditingController controller,
  required TextInputType inputType,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  //required FormFieldValidator<String>? validator,
  String? label,
  //required IconData prefixIcon,
  IconData? suffix,
  bool isPassword = false,
  VoidCallback? suffixPressed,
  GestureTapCallback? onTab,
  bool isClickable = true,
  int? maxLength,
  TextDirection? textDirection,
  int maxLines = 1,
  required BuildContext context
}) =>
    TextFormField(
      autofocus: false,
      cursorColor: Colors.black,
      keyboardType: inputType,
      controller: controller,
      obscureText: isPassword,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      //validator: validator,
      onTap: onTab,
      enabled: isClickable,
      maxLines: maxLines,
      decoration: InputDecoration(
        focusColor: Colors.amber,
        fillColor: Theme.of(context).colorScheme.onPrimary,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        filled: true,
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        //prefixIcon: Icon(prefixIcon),
        suffixIcon: suffix != null
            ? IconButton(
          icon: Icon(
            suffix,
          ),
          onPressed: suffixPressed,
        )
            : null,
      ),
      maxLength: maxLength,
      textDirection: textDirection,
    );


