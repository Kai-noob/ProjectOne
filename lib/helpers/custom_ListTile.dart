import 'package:flutter/material.dart';
import 'custom_suffixicon.dart';


class CustomListTile extends StatelessWidget {

  final String title;
  final String svgicon;
  final VoidCallback onTap;
  const CustomListTile({
    Key? key, required this.title, required this.svgicon, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: Colors.red,
      onTap: onTap,
      title: Padding(
        padding: const EdgeInsets.only(top:18.0),
        child: Text(title),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12),
      leading: CustomSuffixIcon(svgicon:svgicon),
    );
  }
}