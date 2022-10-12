import 'package:flutter/material.dart';

class CustomTextFied extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextFied({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38
          )
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          )
        )
      ),
      validator: (value) {
        
      },
    );
  }
}