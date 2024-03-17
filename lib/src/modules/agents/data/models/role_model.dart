class RoleModel {
  String uuid;
  String displayName;

  RoleModel({
    required this.uuid,
    required this.displayName,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      uuid: json['uuid'],
      displayName: json['displayName'],
    );
  }
}