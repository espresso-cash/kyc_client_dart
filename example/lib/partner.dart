import 'package:flutter/material.dart';
import 'package:kyc_sharing_client/shared.dart';
import 'package:kyc_sharing_client/state.dart';
import 'package:provider/provider.dart';

class PartnerView extends StatelessWidget {
  const PartnerView({super.key});

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
              if (state.file case final image?)
                SizedBox(
                  height: 200,
                  child: Image.network(image.path),
                ),
            ],
          ),
        ),
      );
}
