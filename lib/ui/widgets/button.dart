import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/ui/theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({ Key? key, required this.label, required this.onTap }) : super(key: key);

  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}