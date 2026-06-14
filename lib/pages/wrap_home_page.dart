import 'package:flutter/material.dart';

import '../exports/theme.dart';
import '../exports/widgets.dart';

class WrapHomePage extends StatelessWidget {
  const WrapHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mainPadding,
      child: Wrap(
        spacing: panelSpacing,
        runSpacing: panelSpacing,
        children: [
          PanelWidget(
            title: 'Panel title 1',
            text: 'Panel text 1. Panel text 1. Panel text 1. Panel text 1. Panel text 1.',
            iconDataEnabled: Icons.mic,
            iconDataDisabled: Icons.mic_off,
            label: 'Panel 1 button',
            onPressed: () {},
          ),
          PanelWidget(
            title: 'Panel title 2',
            text: 'Panel text 2.',
            iconDataEnabled: Icons.play_arrow,
            iconDataDisabled: Icons.play_disabled,
            label: 'Panel 2 button',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
