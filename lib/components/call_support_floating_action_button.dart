import 'package:flutter/material.dart';

class CallSupportFloatingActionButton extends StatelessWidget {
  const CallSupportFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.support_agent),
    );
  }
}
