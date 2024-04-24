import 'package:flutter/material.dart';

class DottedBar extends StatelessWidget {
  final int maxDots, activeDots;
  final Color activeColor, color;
  final double dotSize;
  const DottedBar({
    super.key,
    required this.maxDots,
    required this.activeDots,
    this.color = Colors.white70,
    this.activeColor = Colors.indigo,
    this.dotSize = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        maxDots,
        (index) => Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: SizedBox.square(
            dimension: dotSize,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: index <= activeDots - 1 ? activeColor : color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
