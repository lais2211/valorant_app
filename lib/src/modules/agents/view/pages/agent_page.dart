import 'package:flutter/material.dart';

import '../../data/models/agent_model.dart';
import '../components/agent_description.dart';
import '../components/agent_header.dart';

class AgentPage extends StatefulWidget {
  const AgentPage({Key? key, required this.agent}) : super(key: key);

  final AgentModel agent;

  @override
  State<AgentPage> createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 200,
        leading: Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        flexibleSpace: AgentHeader(
          agentImage: widget.agent.picture,
          agent: widget.agent,
          agentName: widget.agent.name,
          agentType: widget.agent.role.displayName,
        ),
      ),
      body: AgentDescription(widget: widget),
    );
  }
}


