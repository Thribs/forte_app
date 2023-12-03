import 'package:flutter/material.dart';

class SearchUnavailableTitle extends StatelessWidget {
  const SearchUnavailableTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text("busca automática indisponível. Chame nosso"),
      OutlinedButton(onPressed: () {}, child: const Text("atendimento")),
      const Text("para buscarmos manualmente."),
    ],);
  }
}
