import 'package:flutter/material.dart';
import '../../../../theme/theme_colors.dart';

class AbilityCard extends StatelessWidget {
  const AbilityCard({super.key, required this.abilityName, required this.abilityDescription});

  final String abilityName;
  final String abilityDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorSys.ktertiary
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(abilityName, style: const TextStyle(fontSize: 16),),
          const SizedBox(height: 10,),
          Text(abilityDescription, style: const TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}