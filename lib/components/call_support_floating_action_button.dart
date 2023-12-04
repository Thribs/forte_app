import 'package:flutter/material.dart';
import 'package:forte/data/forte.dart';
import 'package:forte/resources/strings.dart';
import 'package:url_launcher/link.dart';

class CallSupportFloatingActionButton extends StatelessWidget {
  const CallSupportFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final phoneNumber = Forte.supportPhoneNumber;
    final whatsappUrl = Strings.supportWhatsappUrl(phoneNumber);
    final whatsappUri = Uri.parse(whatsappUrl);
    return Link(
      target: LinkTarget.blank,
      uri: whatsappUri,
      builder: (context, followLink) {
        return FloatingActionButton(
          onPressed: followLink,
          tooltip: 'chamar suporte',
          child: const Icon(Icons.support_agent),
        );
      },
    );
  }
}
