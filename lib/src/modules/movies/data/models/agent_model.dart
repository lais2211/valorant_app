import 'dart:ui';

import 'package:valorant_app/src/modules/movies/data/models/ability_model.dart';
import 'package:valorant_app/src/theme/string_to_color.dart';

import 'role_model.dart';

class AgentModel {
  String id;
  String name;
  String description;
  String picture;
  List<Color> backgroundGradientColors;
  List<AbilityModel> abilities;
  RoleModel role; 

  AgentModel({
    required this.id,
    required this.name,
    required this.description,
    required this.picture,
    required this.backgroundGradientColors,
    required this.abilities,
    required this.role, 
  });

  factory AgentModel.fromJson(Map<String, dynamic> json) {
    List<Color>gradientColors =(json['backgroundGradientColors']).isNotEmpty
            ? (json['backgroundGradientColors'] as List).map((e) => (e as String).toColor()).toList()
            : [];

    List<dynamic> abilitiesData = json['abilities'];
    List<AbilityModel> abilities = abilitiesData.map((ability) => AbilityModel.fromJson(ability)).toList();

    Map<String, dynamic> roleData = json['role'];
    RoleModel role = RoleModel.fromJson(roleData); 

    return AgentModel(
      id: json['uuid'],
      name: json['displayName'],
      description: json['description'],
      picture: json['fullPortrait'],
      backgroundGradientColors: gradientColors,
      abilities: abilities,
      role: role, 
    );
  }
}