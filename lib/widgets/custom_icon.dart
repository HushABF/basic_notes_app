import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16),
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white10,
      ),
      child: Center(
        child: IconButton(
          // alignment: Alignment.center,
          icon: Icon(icon, size: 20),
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
