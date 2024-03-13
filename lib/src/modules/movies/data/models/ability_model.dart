class AbilityModel {
  String slot;
  String displayName;
  String description;

  AbilityModel({
    required this.slot,
    required this.displayName,
    required this.description,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    return AbilityModel(
      slot: json['slot'],
      displayName: json['displayName'],
      description: json['description'],
    );
  }
}