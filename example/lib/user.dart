import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:kyc_sharing_client/shared.dart';
import 'package:kyc_sharing_client/state.dart';
import 'package:provider/provider.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  XFile? _file;

  @override
  void initState() {
    super.initState();
    context.read<PartnerAppState>().createPartner();

    context.read<WalletAppState>().addListener(_updateControllers);
  }

  void _updateControllers() {
    final state = context.read<WalletAppState>();
    _emailController.text = state.email ?? '';
    _nameController.text = state.phone ?? '';
  }

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();

    context.read<WalletAppState>().removeListener(_updateControllers);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
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
                child: const Text('Init wallet'),
                onPressed: () => context.read<WalletAppState>().createWallet(),
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
              const CustomDivider(),
              const SizedBox(height: 16),
              ValueTextfield(
                controller: _emailController,
                title: 'Email',
              ),
              const SizedBox(height: 8),
              ValueTextfield(
                controller: _nameController,
                title: 'Phone',
              ),
              const SizedBox(height: 8),
              ValueFilePicker(
                title: 'File',
                onFileSelected: (file) => _file = file,
              ),
              const SizedBox(height: 16),
              ListenableBuilder(
                listenable: Listenable.merge([
                  _emailController,
                  _nameController,
                ]),
                builder: (context, child) => ElevatedButton(
                  onPressed: () async {
                    showSnackBar(context, message: 'Updating...');

                    await context.read<WalletAppState>().updateData(
                          email: _emailController.text,
                          phone: _nameController.text,
                          file: _file,
                        );

                    if (!context.mounted) return;

                    showSnackBar(context, message: 'User data updated');
                  },
                  child: const Text('Update User Data'),
                ),
              ),
              const SizedBox(height: 16),
              const CustomDivider(),
              const SizedBox(height: 16),
              Consumer<PartnerAppState>(
                builder: (context, partnerState, child) => ElevatedButton(
                  onPressed: () async {
                    await context.read<WalletAppState>().grantPartnerAccess(
                          partnerState.authPublicKey,
                        );

                    if (!context.mounted) return;

                    showSnackBar(context, message: 'Granted partner access');
                  },
                  child: const Text('Grant partner access'),
                ),
              ),
              const SizedBox(height: 16),
              const CustomDivider(),
              const SizedBox(height: 16),
              ValueField(
                title: 'Partner Info',
                value: state.partnerInfo != null
                    ? '${state.partnerInfo?.name} (${state.partnerInfo?.publicKey})'
                    : '',
              ),
              Consumer<PartnerAppState>(
                builder: (context, partnerState, child) => ElevatedButton(
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
      );
}
