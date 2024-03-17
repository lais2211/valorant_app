import 'package:flutter/material.dart';
import 'package:valorant_app/src/modules/movies/view/components/text_title.dart';
import 'package:valorant_app/src/modules/movies/view/pages/agent_page.dart';

import '../../data/models/agent_model.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({
    Key? key,
    required this.agent,
    required this.agentName,
    required this.agentImage,
  }) : super(key: key);

  final AgentModel agent;
  final String agentName;
  final String agentImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AgentPage(
                      agent: agent,
                    ),
                  ),
                );
      },
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: agent.backgroundGradientColors.getRange(0, 3).toList(),
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            left: -70,
            top: -10,
            child: Image.network(
              agentImage,
              width: 500,
              height: 300,
              filterQuality: FilterQuality.high,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextTitle(title: agentName)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
