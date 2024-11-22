class AppConfig {
  const AppConfig.demo()
      : storageBaseUrl = 'https://storage-demo.brij.fi/',
        validatorBaseUrl = 'https://verifier-demo.brij.fi/',
        orderBaseUrl = 'https://orders-demo.brij.fi/';

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
