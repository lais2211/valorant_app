import 'package:flutter/material.dart';
import 'package:valorant_app/src/modules/agents/view/components/ability_card.dart';

import '../../l10n/text_l10n.dart';
import '../pages/agent_page.dart';
import 'text_title.dart';
import 'text_type.dart';

class AgentDescription extends StatelessWidget {
  AgentDescription({
    super.key,
    required this.widget,
  });

  final AgentPage widget;
  final TextL10n text = TextL10n();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               TextTitle(
                title: text.biography,
              ),
              const SizedBox(
                height: 10,
              ),
              TextType(text: widget.agent.description),
              const SizedBox(
                height: 20,
              ),
              TextTitle(
               title: text.abilities,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.agent.abilities.length,
                  itemBuilder: (context, index) {
                    final ability = widget.agent.abilities[index];
                    return Column(
                      children: [
                        AbilityCard(
                          abilityName: ability.displayName,
                          abilityDescription: ability.description,
                          iconImage: ability.displayIcon,
                        ),
                        const SizedBox(
                            height: 10),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
