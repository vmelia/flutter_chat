import 'package:flutter/material.dart';

import '../exports/theme.dart';
import '../exports/widgets.dart';

class FlexPanelWidget extends StatelessWidget {
  const FlexPanelWidget({
    super.key,
    required this.title,
    required this.text,
    required this.label,
    required this.iconDataEnabled,
    required this.iconDataDisabled,
    required this.onPressed,
  });
  final String title;
  final String text;
  final String label;
  final IconData iconDataEnabled;
  final IconData iconDataDisabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final iconData = onPressed != null ? iconDataEnabled : iconDataDisabled;
    return Container(
      width: panelWidth,
      height: panelHeight,
      decoration: BoxDecoration(
        border: Border.all(color: panelBorderColour),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            spreadRadius: 6,
            blurRadius: 6,
            offset: const Offset(20, 20),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: TextWidget(
              text: title,
              backgroundColour: panelHeaderColour,
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: TextWidget(
              text: text,
              backgroundColour: panelBodyColour,
              textAlign: TextAlign.left,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ButtonWidget(label: label, iconData: iconData, onPressed: onPressed!),
          ),
        ],
      ),
    );
  }
}
