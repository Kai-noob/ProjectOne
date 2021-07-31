import 'package:flutter/material.dart';
import 'package:flutterproject/helpers/custom_suffixicon.dart';

class CustomCategoryIcon extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onTap;
  const CustomCategoryIcon(
      {Key? key, required this.label, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(
          children: [
            CustomCatIcon(svgicon: icon),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label,
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
