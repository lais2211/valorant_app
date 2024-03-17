import 'dart:ui';

import 'package:flutter/material.dart';
import '../../data/models/agent_model.dart';
import 'text_title.dart';
import 'text_type.dart';

class AgentHeader extends StatefulWidget {
  const AgentHeader(
      {Key? key,
      required this.agentImage,
      required this.agent,
      required this.agentName,
      required this.agentType})
      : super(key: key);
  final String agentImage;
  final AgentModel agent;
  final String agentName;
  final String agentType;

  @override
  State<AgentHeader> createState() => _AgentHeaderState();
}

class _AgentHeaderState extends State<AgentHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Positioned(
          left: -100,
          top: -80,
          child: ClipRect(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: Image.network(
                widget.agentImage,
                height: 400,
                fit: BoxFit.cover,
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:
                  widget.agent.backgroundGradientColors.getRange(0, 3).toList(),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: Color.fromRGBO(
              0,
              0,
              0,
              0.5,
            ),
          ),
        ),
        Image.network(widget.agentImage),
        Positioned(
            bottom: 50, left: 40, child: TextTitle(title: widget.agentName)),
        Positioned(
            bottom: 20,
            left: 40,
            child: Container(
              color: widget.agent.backgroundGradientColors.first,
              width: 80,
              height: 20,
              child: Center(
                  child: Text(
                widget.agentType,
                style: TextStyle(
                    color: widget.agent.backgroundGradientColors.last,
                    fontSize: 15),
              )),
            ))
      ],
    );
  }
}
