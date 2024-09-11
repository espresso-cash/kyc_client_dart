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
                          message: _messageController.text,
                          userPK: context.read<WalletAppState>().authPublicKey,
                          secretKey:
                              context.read<WalletAppState>().rawSecretKey,
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
                value: state.validationResult != null
                    ? state.validationResult.toString()
                    : '',
              ),
              ElevatedButton(
                onPressed: () async {
                  final walletState = context.read<WalletAppState>();

                  await context.read<PartnerAppState>().getValidationResult(
                        userPK: walletState.authPublicKey,
                        secretKey: walletState.rawSecretKey,
                      );
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
                title: 'Phone',
                value: state.phone,
              ),
              if (state.file case final image?) Image.network(image.path),
              const CustomDivider(),
              const SizedBox(height: 16),
              ValueField(
                title: 'OrderId',
                value: state.email,
              ),
              ValueField(
                title: 'Amount',
                value: state.phone,
              ),
              ValueField(
                title: 'Crypto Currency',
                value: state.phone,
              ),
              Consumer<WalletAppState>(
                builder: (context, walletState, child) {
                  final orderId = walletState.orderId;
                  final hasOrder = orderId != null;

                  return ElevatedButton(
                    onPressed: hasOrder
                        ? () =>
                            context.read<PartnerAppState>().fetchOrder(orderId)
                        : null,
                    child: const Text('Fetch OnRamp Order'),
                  );
                },
              ),
            ],
          ),
        ),
      );
}
