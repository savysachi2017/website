import 'package:flutter/material.dart';
import 'package:se_website/utils/colors.dart';

class Navbaritem extends StatefulWidget {
  final VoidCallback onPressed;
  final String optionName;
  const Navbaritem(
      {super.key, required this.onPressed, required this.optionName});

  @override
  State<Navbaritem> createState() => _NavbaritemState();
}

class _NavbaritemState extends State<Navbaritem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      child: TextButton(
          onPressed: widget.onPressed,
          child: Text(
            widget.optionName,
            style: TextStyle(
                color: isHover ? AppColors.theme['highlightColor'] : AppColors.theme['secondaryColor'], fontSize: 16
            ),
          )),
    );
  }
}
