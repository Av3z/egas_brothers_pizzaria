import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscureText;
  final Function(String) onChanged;

  const InputWidget(
      {super.key,
      bool? obscureText,
      required this.text,
      required this.controller,
      required this.onChanged})
      : obscureText = obscureText ?? false;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 3)),
        ],
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          border: InputBorder.none,
          hintText: text,
          hintStyle: const TextStyle(
            color: Color(0xFFA4A4A4),
          ),
        ),
      ),
    );
  }
}
