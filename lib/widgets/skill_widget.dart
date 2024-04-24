import 'package:flutter/material.dart';
import 'package:naveen_avidi_portfolio/widgets/dotted_bar.dart';

class SkillWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget trailing;
  final int activeDots;
  const SkillWidget({
    super.key,
    required this.onTap,
    required this.trailing,
    required this.activeDots,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 10,
        right: 5,
      ),
      dense: true,
      title: DottedBar(
        maxDots: 5,
        activeDots: activeDots,
        dotSize: 6,
        color: Theme.of(context).progressIndicatorTheme.linearTrackColor!,
        activeColor: Theme.of(context).progressIndicatorTheme.color!,
      ),
      trailing: Chip(
        backgroundColor: Theme.of(context).listTileTheme.iconColor,
        label: trailing,
      ),
      onTap: onTap,
    );
  }
}
