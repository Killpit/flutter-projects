import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/pallete.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;

  const RoundedSmallButton({
    super.key,
    required this.onTap,
    required this.label,
    this.backgroundColor = Pallete.backgroundColor,
    this.textColor = Pallete.whiteColor,
    });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label,
      style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
    );
  }
}