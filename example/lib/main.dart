import 'package:flutter/material.dart';
import 'package:kyc_sharing_client/state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<PartnerAppState>().createPartner();
    context.read<WalletAppState>().addListener(_handlePartnerTokenGenerated);
  }

  @override
  void dispose() {
    context.read<WalletAppState>().removeListener(_handlePartnerTokenGenerated);
    super.dispose();
  }

  void _handlePartnerTokenGenerated() {
    final partnerState = context.read<PartnerAppState>();
    final walletState = context.read<WalletAppState>();
    partnerState.generateAuthToken(walletState.partnerToken);
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Consumer<WalletAppState>(
                  builder: (context, state, child) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wallet',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        child: const Text('New wallet'),
                        onPressed: () =>
                            context.read<WalletAppState>().createWallet(),
                      ),
                      const SizedBox(height: 16),
                      ValueField(
                        title: 'Wallet address',
                        value: state.wallet?.address ?? '',
                      ),
                      ValueField(
                        title: 'Auth public key',
                        value: state.authPublicKey,
                      ),
                      ValueField(
                        title: 'Raw secret key',
                        value: state.rawSecretKey,
                      ),
                      const _Divider(),
                      const SizedBox(height: 16),
                      ValueTextfield(
                        controller: _emailController,
                        title: 'Email',
                      ),
                      const SizedBox(height: 8),
                      ValueTextfield(
                        controller: _nameController,
                        title: 'Name',
                      ),
                      const SizedBox(height: 16),
                      ListenableBuilder(
                        listenable: Listenable.merge([
                          _emailController,
                          _nameController,
                        ]),
                        builder: (context, child) => ElevatedButton(
                          onPressed: () async {
                            await context.read<WalletAppState>().updateData(
                                  email: _emailController.text,
                                  name: _nameController.text,
                                );

                            _showSnackBar('User data updated');
                          },
                          child: const Text('Update User Data'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const _Divider(),
                      const SizedBox(height: 16),
                      ValueField(
                        title: 'Partner token',
                        value: state.partnerToken,
                      ),
                      Consumer<PartnerAppState>(
                        builder: (context, partnerState, child) =>
                            ElevatedButton(
                          onPressed: () => context
                              .read<WalletAppState>()
                              .generatePartnerToken(
                                partnerState.authPublicKey,
                              ),
                          child: const Text('Generate partner token'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const _Divider(),
                      const SizedBox(height: 16),
                      ValueField(
                        title: 'Partner Info',
                        value: state.partnerInfo != null
                            ? '${state.partnerInfo?.name} (${state.partnerInfo?.publicKey})'
                            : '',
                      ),
                      Consumer<PartnerAppState>(
                        builder: (context, partnerState, child) =>
                            ElevatedButton(
                          onPressed: () =>
                              context.read<WalletAppState>().fetchPartnerInfo(
                                    partnerState.authPublicKey,
                                  ),
                          child: const Text('Fetch partner info'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Consumer<PartnerAppState>(
                  builder: (context, state, child) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Partner',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 16),
                      ValueField(
                        title: 'Auth public key',
                        value: state.authPublicKey,
                      ),
                      const _Divider(),
                      const SizedBox(height: 16),
                      Consumer<WalletAppState>(
                        builder: (context, walletState, child) =>
                            ElevatedButton(
                          onPressed: () =>
                              context.read<PartnerAppState>().fetchData(
                                    walletState.rawSecretKey,
                                    walletState.authPublicKey,
                                  ),
                          child: const Text('Fetch User Data'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ValueField(
                        title: 'Email',
                        value: state.email,
                      ),
                      ValueField(
                        title: 'Name',
                        value: state.name,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class ValueTextfield extends StatelessWidget {
  const ValueTextfield({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
          contentPadding: const EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      );
}

class ValueField extends StatelessWidget {
  const ValueField({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.onSurface),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SelectableText(
              value,
              style: const TextStyle(fontFamily: 'mono', fontSize: 12),
            ),
          ],
        ),
      );
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) => const Divider(height: 16);
}
