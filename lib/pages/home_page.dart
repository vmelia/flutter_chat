import 'package:flutter/material.dart';

import '../exports/theme.dart';
import '../exports/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mainPadding,
      child: Column(
        children: [
          PanelWidget(
            title: 'Panel title 1',
            text: 'Panel text 1. Panel text 1. Panel text 1. Panel text 1. Panel text 1.',
            iconDataEnabled: Icons.mic,
            iconDataDisabled: Icons.mic_off,
            label: 'Panel 1 button',
            onPressed: () {},
          ),
          Container(
            height: panelSpacing,
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
