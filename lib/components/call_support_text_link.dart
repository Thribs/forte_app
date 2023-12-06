import 'package:forte/data/forte.dart';
import 'package:forte/resources/strings.dart';
import 'package:url_launcher/link.dart';

import 'package:flutter/material.dart';

class CallSupportTextLink extends StatelessWidget {
  const CallSupportTextLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final phoneNumber = Forte.supportPhoneNumber;
    final url = Strings.supportWhatsappUrl(phoneNumber);
    final uri = Uri.parse(url);
    return Link(
      target: LinkTarget.blank,
      uri: uri,
      builder: (context, followLink) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: followLink,
            child: const Text(
              Strings.atendimento,
              style: TextStyle(),
            ),
          ),
        );
      },
    );
  }
}
