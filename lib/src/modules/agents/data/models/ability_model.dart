class AbilityModel {
  String slot;
  String displayName;
  String description;
  String ? displayIcon;

  AbilityModel({
    required this.slot,
    required this.displayName,
    required this.description,
    this.displayIcon
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) {
    return AbilityModel(
      slot: json['slot'],
      displayName: json['displayName'],
      description: json['description'],
      displayIcon: json['displayIcon'],
    );
  }
}
