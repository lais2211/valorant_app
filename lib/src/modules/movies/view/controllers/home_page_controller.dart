import 'package:mobx/mobx.dart';
import 'package:valorant_app/src/modules/movies/data/services/valorant_service.dart';

import '../../data/models/agent_model.dart';
import '../components/widget_status.dart';

part 'home_page_controller.g.dart';

class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  final ValorantService service;

  _HomePageControllerBase(this.service);

  @observable
  WidgetStatus? getAgentsStatus;
  @observable
  ObservableList<AgentModel> agentModelList = ObservableList<AgentModel>();

  @action
  Future<List<AgentModel>> getAgents() async {
    var agents = await service.getAgents();
    agentModelList.addAll(agents);
    return agentModelList;
  }

  @action
  Future<void> agentsStatus() async {
    getAgentsStatus = WidgetStatus.loading;

    await getAgents();

    getAgentsStatus = WidgetStatus.ready;
  }

  @action
  Map<String, List<AgentModel>> separateAgentsByRole(List<AgentModel> agents) {
    Map<String, List<AgentModel>> agentsByRole = {};

    for (AgentModel agent in agents) {
      String roleDisplayName = agent.role.displayName;

      if (!agentsByRole.containsKey(roleDisplayName)) {
        agentsByRole[roleDisplayName] = [];
      }

      agentsByRole[roleDisplayName]!.add(agent);
    }

    return agentsByRole;
  }

  @observable
  List<String> tabs = ['Controller', 'Duelist', 'Initiator', 'Sentinel'];
  
  @observable
  List<AgentModel> agents = [];

  @observable
  Map<String, List<AgentModel>> agentsByRole = {};

}
