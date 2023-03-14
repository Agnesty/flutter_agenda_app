import 'package:flutter/material.dart';
import 'package:flutter_agenda_app/screen/theme.dart';

class ButtonKu extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const ButtonKu({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryClr,
        ),
      child: Center(child: Text(label, style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}