class PartnerModel {
  PartnerModel({required this.name, required this.publicKey});

  factory PartnerModel.fromJson(Map<String, dynamic> json) => PartnerModel(
        name: json['name'] as String,
        publicKey: json['publicKey'] as String,
      );
  final String name;
  final String publicKey;

  Map<String, dynamic> toJson() => {
        'name': name,
        'publicKey': publicKey,
      };
}
