import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon, required this.title, this.onTap});
  final FaIcon icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [icon, const SizedBox(width: 6,), Text(title, style: const TextStyle(color: Colors.yellow),)],),
        ),
      ),
    );
  }
}
