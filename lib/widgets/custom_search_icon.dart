import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

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
      child: const Center(
        child: Icon(Icons.search, color: Colors.white, size: 20),
      ),
    );
  }
}
