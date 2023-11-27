import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double height;
  const ChartBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: FractionallySizedBox(
          heightFactor: height,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.rectangle,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
            ),
          ),
        ),
      ),
    );
  }
}
