import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
    final Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: const TextStyle(fontSize: 28)),
        CustomIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}
