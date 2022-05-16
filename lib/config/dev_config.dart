part of 'app_config.dart';

class DevConfig implements BaseConfig {
  @override
  String get apiHost => "http://localhost:8080/v1/graphql";

  @override
  bool get reportErrors => false;

  @override
  bool get trackEvents => false;

  @override
  bool get useHttps => false;

  @override
  String get apiAuth => "http://localhost:4000";

  @override
  String get mode => 'dev';
}
