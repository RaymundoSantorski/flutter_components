import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        onChanged: (value) {
          print(value);
        },
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // prefixIcon: Icon(Icons.verified_user_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.green),
          // ),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         topRight: Radius.circular(10))),
        ));
  }
}
