import 'package:flutter/material.dart';
import 'package:forte/components/call_support_text_link.dart';

class SearchUnavailableTitle extends StatelessWidget {
  const SearchUnavailableTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      direction: Axis.horizontal,
      children: [
        Text(
          "busca automática indisponível. Chame nosso",
          style: TextStyle(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
          child: CallSupportTextLink(),
        ),
        Text("para buscarmos manualmente."),
      ],
    );
  }
}
