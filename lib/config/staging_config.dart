part of 'app_config.dart';

class StagingConfig implements BaseConfig {
  @override
  String get apiHost => "staging.example.com";

  @override
  bool get reportErrors => true;

  @override
  bool get trackEvents => false;

  @override
  bool get useHttps => true;

  @override
  String get apiAuth => 'https://auth.api.com';

  @override
  String get mode => 'staging';
}
