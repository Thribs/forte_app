import 'package:flutter/material.dart';
import 'package:forte/components/busca_cnpj_cnpj_field.dart';
import 'package:forte/components/busca_cnpj_razao_social_field.dart';
import 'package:forte/components/busca_cnpj_submit_button.dart';
import 'package:forte/components/search_unavailable_title.dart';

class BuscaCnpjForm extends StatelessWidget {
  const BuscaCnpjForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("CNPJ"),
        BuscaCnpjCnpjField(),
        SizedBox(height: 16),
        Text("razão social"),
        BuscaCnpjRazaoSocialField(),
        SizedBox(height: 24),
        BuscaCnpjSubmitButton(),
        SearchUnavailableTitle(),
      ],
    );
  }
}
