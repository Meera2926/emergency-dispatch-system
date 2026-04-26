enum Environment { dev, staging, prod }

class EnvConfig {
  final Environment environment;
  final String apiBaseUrl;
  final bool enableMockResponders;

  const EnvConfig({
    required this.environment,
    required this.apiBaseUrl,
    this.enableMockResponders = false,
  });

  static const dev = EnvConfig(
    environment: Environment.dev,
    apiBaseUrl: 'http://10.0.2.2:8000',
    enableMockResponders: true,
  );

  static const prod = EnvConfig(
    environment: Environment.prod,
    apiBaseUrl: 'https://api.safecall-dispatch.com',
    enableMockResponders: false,
  );
}
