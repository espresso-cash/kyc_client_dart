class AppConfig {
  const AppConfig.demo()
      : storageBaseUrl = 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/',
        validatorBaseUrl = 'https://validator.espressocash.com/',
        orderBaseUrl =
            'https://kyc-backend-orders-402681483920.europe-west1.run.app/';

  const AppConfig.production()
      : storageBaseUrl = 'https://storage.brij.fi/',
        validatorBaseUrl = 'https://verifier.brij.fi/',
        orderBaseUrl = 'https://orders.brij.fi/';

  const AppConfig.custom({
    required this.storageBaseUrl,
    required this.validatorBaseUrl,
    required this.orderBaseUrl,
  });

  final String storageBaseUrl;
  final String validatorBaseUrl;
  final String orderBaseUrl;
}
