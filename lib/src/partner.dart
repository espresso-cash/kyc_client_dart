class PartnerModel {
  final String name;
  final String publicKey;

  PartnerModel({required this.name, required this.publicKey});

  factory PartnerModel.fromJson(Map<String, dynamic> json) {
    return PartnerModel(
      name: json['name'] as String,
      publicKey: json['publicKey'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'publicKey': publicKey,
    };
  }
}
