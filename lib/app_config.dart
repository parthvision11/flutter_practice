class AppConfig {
  final String appName;
  final String baseUrl;
  final String flavor;

  static late AppConfig _instance;

  AppConfig._({
    required this.appName,
    required this.baseUrl,
    required this.flavor,
  });

  static void initialize({
    required String appName,
    required String baseUrl,
    required String flavor,
  }) {
    _instance = AppConfig._(
      appName: appName,
      baseUrl: baseUrl,
      flavor: flavor,
    );
  }

  static AppConfig get instance => _instance;
}
