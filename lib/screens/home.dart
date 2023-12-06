import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:forte/ad_state.dart';
import 'package:forte/components/banner_ad_unit.dart';
import 'package:forte/components/busca_cnpj_form.dart';
import 'package:forte/components/call_support_floating_action_button.dart';
import 'package:forte/resources/strings.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd? bannerAd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (kIsWeb == false) {
      final adState = Provider.of<AdState>(context);
      adState.initializationStatus.then((status) {
        setState(() {
          bannerAd = BannerAd(
              adUnitId: adState.bannerAdUnitId,
              size: AdSize.banner,
              request: const AdRequest(),
              listener: adState.bannerAdListener)
            ..load();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            const Text("Forte Dados"),
            const SizedBox(
              height: 80,
            ),
            const Text("Dados do CNPJ - Cadastro Nacional da Pessoa Jurídica"),
            const BuscaCnpjForm(),
            if (kIsWeb == true)
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.blue, width: 1),
                ),
                child: BannerAdUnit(),
              )
            else if (bannerAd == null)
              const SizedBox(height: 50)
            else
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.red, width: 1),
                ),
                child: SizedBox(
                  height: 50,
                  child: AdWidget(ad: bannerAd!),
                ),
              )
          ],
        ),
      ),
      floatingActionButton: const CallSupportFloatingActionButton(
          message: Strings.requestHelpMessage),
    );
  }
}
