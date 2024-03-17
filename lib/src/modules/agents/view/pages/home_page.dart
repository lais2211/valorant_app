import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:valorant_app/src/theme/theme_colors.dart';

import '../../data/models/agent_model.dart';
import '../../l10n/text_l10n.dart';
import '../components/agent_card.dart';
import '../components/build_tap.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final TextL10n text = TextL10n();
  HomePageController controller = GetIt.I();


  @override
  void initState() {
    super.initState();
    controller.tabController = TabController(length: controller.tabs.length, vsync: this);
    controller.filterAgentsStatus();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          SvgPicture.asset(
            'lib/assets/logo/valorant.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text.title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TabBar(
            controller: controller.tabController,
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            tabs: controller.tabs
                .map((text) => BuildTab(text, context))
                .toList(),
            onTap: (index) {
              setState(() {
                controller.tabController!.index = index;
                controller.filterAgentsByRole(controller.tabs[index]);
              });
            },
            indicatorColor: ColorSys.ksecondary,
            labelColor: ColorSys.ksecondary,
            unselectedLabelColor: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: controller.agents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 0,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                AgentModel agent = controller.agents[index];
                return AgentCard(
                  agent: agent,
                  agentName: agent.name,
                  agentImage: agent.picture,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
