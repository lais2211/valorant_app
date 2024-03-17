import 'package:flutter/material.dart';
import '../../../../theme/theme_colors.dart';

class AbilityCard extends StatelessWidget {
  const AbilityCard({
    Key? key,
    required this.abilityName,
    required this.abilityDescription,
    this.iconImage,
  }) : super(key: key);

  final String abilityName;
  final String abilityDescription;
  final String? iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorSys.ktertiary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (iconImage != null) 
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 30,
                height: 30,
                child: Image.network(iconImage!),
              ),
            ),
          Text(
            abilityName,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            abilityDescription,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}