import 'package:flutter/material.dart';
import 'package:forte/util.dart';

class CallSupportFloatingActionButton extends StatelessWidget {
  final String? message;

  const CallSupportFloatingActionButton({
    super.key, this.message,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Util.callSupportWhatsapp(message: message);
      },
      tooltip: 'chamar suporte',
      child: const Icon(Icons.support_agent),
    );
  }
}
