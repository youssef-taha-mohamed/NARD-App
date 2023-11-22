import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {

  final TextEditingController controllerName;
  final int lines;
  final int length;
  final TextInputType type;
  final String title;

  const CustomTextField(
      {super.key,
        required this.title,
        required this.length,
        required this.controllerName,
        required this.lines,
        required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: title,),
              TextSpan(text: '*', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          maxLines: lines,
          maxLength: length,
          controller: controllerName,
          cursorColor: Colors.black,
          keyboardType: type,
          decoration: InputDecoration(
              focusColor: Colors.amber,
              fillColor: Theme.of(context).colorScheme.onPrimary,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.yellow
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )
              )
          ),
        ),
      ],
    );
  }
}


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


