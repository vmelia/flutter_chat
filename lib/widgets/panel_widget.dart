import 'package:flutter/material.dart';

import '../exports/theme.dart';
import '../exports/widgets.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    super.key,
    required this.title,
    required this.text,
    required this.label,
    required this.iconData,
    required this.onPressed,
  });
  final String title;
  final String text;
  final String label;
  final IconData iconData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: panelBorderColour),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              spreadRadius: 6,
              blurRadius: 6,
              offset: const Offset(8, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextWidget(
              text: title,
              backgroundColour: panelHeaderColour,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: TextWidget(
                text: text,
                backgroundColour: panelBodyColour,
                textAlign: TextAlign.left,
              ),
            ),
            ButtonWidget(label: label, iconData: iconData, onPressed: onPressed!),
          ],
        ),
      ),
    );
  }
}
