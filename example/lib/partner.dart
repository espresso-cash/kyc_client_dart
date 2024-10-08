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
              _buildPartnerSection(state),
              _buildUserDataSection(state),
              _buildVerificationSection(state),
              _buildOrdersSection(state),
            ],
          ),
        ),
      );

  Widget _buildPartnerSection(PartnerAppState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          ValueField(
            title: 'User secret key',
            value: state.userSecretKey,
          ),
          ElevatedButton(
            onPressed: () async {
              final walletState = context.read<WalletAppState>();

              await state.getUserSecretKey(walletState.authPublicKey);
            },
            child: const Text('Get User SecretKey'),
          ),
          const SizedBox(height: 16),
          const CustomDivider(thickness: 6),
          const SizedBox(height: 16),
        ],
      );

  Widget _buildUserDataSection(PartnerAppState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'User data',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 32),
          ValueField(
            title: 'Email',
            value: state.email,
          ),
          ValueField(
            title: 'Phone',
            value: state.phone,
          ),
          if (state.file case final image?) Image.network(image.path),
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
          const CustomDivider(thickness: 6),
          const SizedBox(height: 16),
        ],
      );

  Widget _buildVerificationSection(PartnerAppState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Verification',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 32),
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
                      secretKey: context.read<WalletAppState>().rawSecretKey,
                    );

                if (!context.mounted) return;

                showSnackBar(context, message: 'Validation Result updated');
              },
              child: const Text('Update Validation Result'),
            ),
          ),
          const SizedBox(height: 16),
          const CustomDivider(),
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
          const CustomDivider(thickness: 6),
          const SizedBox(height: 16),
        ],
      );

  Widget _buildOrdersSection(PartnerAppState state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Orders',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 32),
          ValueField(
            title: 'Partner Orders:',
            value: state.orders ?? '',
          ),
          Consumer<WalletAppState>(
            builder: (context, walletState, child) => ElevatedButton(
              onPressed: context.read<PartnerAppState>().fetchPartnerOrders,
              child: const Text('Fetch partner orders'),
            ),
          ),
          const SizedBox(height: 16),
          const CustomDivider(),
          const SizedBox(height: 16),
          ValueField(
            title: 'Order Data',
            value: state.orderData ?? '',
          ),
          Consumer<WalletAppState>(
            builder: (context, walletState, child) {
              final orderId = walletState.orderId;
              final hasOrder = orderId != null;

              return Column(
                children: [
                  ElevatedButton(
                    onPressed: hasOrder
                        ? () async {
                            await context
                                .read<PartnerAppState>()
                                .fetchOrder(orderId);
                            if (!context.mounted) return;
                            showSnackBar(context, message: 'Order fetched');
                          }
                        : null,
                    child: const Text('Fetch OnRamp Order'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: hasOrder
                        ? () async {
                            await context
                                .read<PartnerAppState>()
                                .acceptOnRampOrder(orderId);
                            if (!context.mounted) return;
                            showSnackBar(
                              context,
                              message: 'Order accepted',
                            );
                          }
                        : null,
                    child: const Text('Accept OnRamp Order'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: hasOrder
                        ? () async {
                            await context
                                .read<PartnerAppState>()
                                .completeOnRampOrder(
                                    orderId: orderId,
                                    transactionId: 'transactionId');
                            if (!context.mounted) return;
                            showSnackBar(
                              context,
                              message: 'Order completed',
                            );
                          }
                        : null,
                    child: const Text('Complete OnRamp Order'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: hasOrder
                        ? () async {
                            await context.read<PartnerAppState>().rejectOrder(
                                  orderId: orderId,
                                  reason: 'Reject reason',
                                );
                            if (!context.mounted) return;
                            showSnackBar(
                              context,
                              message: 'Order rejected',
                            );
                          }
                        : null,
                    child: const Text('Reject OnRamp Order'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: hasOrder
                        ? () async {
                            await context.read<PartnerAppState>().failOrder(
                                  orderId: orderId,
                                  reason: 'Fail reason',
                                );
                            if (!context.mounted) return;
                            showSnackBar(context, message: 'Order failed');
                          }
                        : null,
                    child: const Text('Fail OnRamp Order'),
                  ),
                ],
              );
            },
          ),
        ],
      );
}
