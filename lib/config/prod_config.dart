part of 'app_config.dart';

class ProdConfig implements BaseConfig {
  @override
  String get apiHost => "https://api.com";

  @override
  bool get reportErrors => true;

  @override
  bool get trackEvents => true;

  @override
  bool get useHttps => true;

  @override
  String get apiAuth => 'https://auth.api.com';

  @override
  String get mode => 'production';
}
