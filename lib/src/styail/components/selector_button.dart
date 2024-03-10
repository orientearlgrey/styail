import 'package:flutter/material.dart';

class StyailSelectorButton extends StatelessWidget {
  const StyailSelectorButton({
    super.key,
    required this.attribute,
    required this.value,
    required this.action,
  });

  final String attribute;
  final String value;
  final Function()? action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 20),
        ),
        backgroundColor: MaterialStateProperty.all(
          attribute == value.toLowerCase()
              ? Colors.black
              : const Color(0xffe0e0e0),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      child: Text(
        value,
        style: TextStyle(
          color: attribute == value.toLowerCase() ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
