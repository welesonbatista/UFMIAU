import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String txt;
  final Icon icon;
  final Function validator;
  final TextInputType keyboard;
  final bool obscure;
  final TextEditingController controller;

  const TextForm({
    Key? key,
    required this.txt,
    required this.icon,
    required this.validator,
    required this.keyboard,
    required this.obscure,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: TextFormField(
        validator: validator(),
        controller: controller,
        obscureText: obscure,
        keyboardType: keyboard,
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: txt,
          //labelStyle: ,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
