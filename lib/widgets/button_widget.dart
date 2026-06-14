import 'package:flutter/material.dart';

import '../exports/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.label,
    required this.iconData,
    required this.onPressed,
  });
  final String label;
  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: panelBodyColour,
      padding: componentPadding,
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: panelHeaderColour,
            child: Icon(iconData, color: iconColour),
          ),
        ],
      ),
    );
  }
}
