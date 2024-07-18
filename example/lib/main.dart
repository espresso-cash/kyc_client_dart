import 'package:flutter/material.dart';
import 'package:kyc_sharing_client/partner.dart';
import 'package:kyc_sharing_client/state.dart';
import 'package:kyc_sharing_client/user.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => WalletAppState()),
          ChangeNotifierProvider(create: (context) => PartnerAppState()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'KYC Sharing Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'KYC Sharing Demo'),
        ),
      );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: const Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: UserView()),
            VerticalDivider(),
            Expanded(child: PartnerView()),
          ],
        ),
      );
}
