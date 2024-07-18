import 'package:flutter/material.dart';
import 'package:kyc_sharing_client/shared.dart';
import 'package:kyc_sharing_client/state.dart';
import 'package:provider/provider.dart';

class PartnerView extends StatefulWidget {
  const PartnerView({super.key});

  @override
  State<PartnerView> createState() => _PartnerViewState();
}

class _PartnerViewState extends State<PartnerView> {
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
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
              const CustomDivider(),
              const SizedBox(height: 16),
              ValueTextfield(
                controller: _messageController,
                title: 'Validation Result',
              ),
              const SizedBox(height: 16),
              ListenableBuilder(
                listenable: _messageController,
                builder: (context, child) => ElevatedButton(
                  onPressed: () async {
                    await context.read<PartnerAppState>().setValidationResult(
                          _messageController.text,
                        );

                    if (!context.mounted) return;

                    showSnackBar(context, message: 'Validation Result updated');
                  },
                  child: const Text('Update Validation Result'),
                ),
              ),
              const SizedBox(height: 16),
              ValueField(
                title: 'Result',
                value: state.result != null ? state.result.toString() : '',
              ),
              ElevatedButton(
                onPressed: () async {
                  await context.read<PartnerAppState>().getValidationResult();
                },
                child: const Text('Fetch Validation Result'),
              ),
              const SizedBox(height: 16),
              const CustomDivider(),
              const SizedBox(height: 16),
              Consumer<WalletAppState>(
                builder: (context, walletState, child) => ElevatedButton(
                  onPressed: () => context.read<PartnerAppState>().fetchData(
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
              if (state.file case final image?) Image.network(image.path),
            ],
          ),
        ),
      );
}
