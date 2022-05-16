class LanguageModel {
  String nativeName;
  String code;
  String key;
  String fullKey;

  LanguageModel(
      {required this.nativeName,
      required this.code,
      required this.key,
      required this.fullKey});

  factory LanguageModel.fromJson(Map<String, dynamic> json) => LanguageModel(
        nativeName: json["native_name"],
        code: json["code"],
        key: json["key"],
        fullKey: json["full_key"],
      );

  Map<String, dynamic> toJson() => {
        "native_name": nativeName,
        "code": code,
        "key": key,
        "full_key": fullKey,
      };
}
