import 'package:flutter/material.dart';

class StepItem extends StatelessWidget {
  final String step;
  final int index;
  final bool divider;

  const StepItem({
    super.key,
    required this.step,
    required this.index,
    required this.divider,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text(
              '#$index',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          title: Text(step, style: Theme.of(context).textTheme.bodyMedium),
        ),
        if (divider) const Divider()
      ],
    );
  }
}
