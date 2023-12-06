import 'package:flutter/material.dart';
import 'package:forte/screens/home.dart';

void main() {
  // if (kIsWeb == false) {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   // unawaited(MobileAds.instance.initialize());
  //   final initFuture = MobileAds.instance.initialize();
  //   final adState = AdState(initFuture);
  //   runApp(
  //     Provider.value(
  //       value: adState,
  //       builder: (context, child) => const ForteApp(),
  //     ),
  //   );
  // }
  runApp(const ForteApp());
}

class ForteApp extends StatelessWidget {
  const ForteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forte Dados',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) {
          return const HomeScreen(title: "Forte");
        }
      },
    );
  }
}
