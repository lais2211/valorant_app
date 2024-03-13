// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageController on _HomePageControllerBase, Store {
  late final _$getAgentsStatusAtom =
      Atom(name: '_HomePageControllerBase.getAgentsStatus', context: context);

  @override
  WidgetStatus? get getAgentsStatus {
    _$getAgentsStatusAtom.reportRead();
    return super.getAgentsStatus;
  }

  @override
  set getAgentsStatus(WidgetStatus? value) {
    _$getAgentsStatusAtom.reportWrite(value, super.getAgentsStatus, () {
      super.getAgentsStatus = value;
    });
  }

  late final _$agentModelListAtom =
      Atom(name: '_HomePageControllerBase.agentModelList', context: context);

  @override
  ObservableList<AgentModel> get agentModelList {
    _$agentModelListAtom.reportRead();
    return super.agentModelList;
  }

  @override
  set agentModelList(ObservableList<AgentModel> value) {
    _$agentModelListAtom.reportWrite(value, super.agentModelList, () {
      super.agentModelList = value;
    });
  }

  late final _$tabsAtom =
      Atom(name: '_HomePageControllerBase.tabs', context: context);

  @override
  List<String> get tabs {
    _$tabsAtom.reportRead();
    return super.tabs;
  }

  @override
  set tabs(List<String> value) {
    _$tabsAtom.reportWrite(value, super.tabs, () {
      super.tabs = value;
    });
  }

  late final _$agentsAtom =
      Atom(name: '_HomePageControllerBase.agents', context: context);

  @override
  List<AgentModel> get agents {
    _$agentsAtom.reportRead();
    return super.agents;
  }

  @override
  set agents(List<AgentModel> value) {
    _$agentsAtom.reportWrite(value, super.agents, () {
      super.agents = value;
    });
  }

  late final _$agentsByRoleAtom =
      Atom(name: '_HomePageControllerBase.agentsByRole', context: context);

  @override
  Map<String, List<AgentModel>> get agentsByRole {
    _$agentsByRoleAtom.reportRead();
    return super.agentsByRole;
  }

  @override
  set agentsByRole(Map<String, List<AgentModel>> value) {
    _$agentsByRoleAtom.reportWrite(value, super.agentsByRole, () {
      super.agentsByRole = value;
    });
  }

  late final _$getAgentsAsyncAction =
      AsyncAction('_HomePageControllerBase.getAgents', context: context);

  @override
  Future<List<AgentModel>> getAgents() {
    return _$getAgentsAsyncAction.run(() => super.getAgents());
  }

  late final _$agentsStatusAsyncAction =
      AsyncAction('_HomePageControllerBase.agentsStatus', context: context);

  @override
  Future<void> agentsStatus() {
    return _$agentsStatusAsyncAction.run(() => super.agentsStatus());
  }

  late final _$_HomePageControllerBaseActionController =
      ActionController(name: '_HomePageControllerBase', context: context);

  @override
  Map<String, List<AgentModel>> separateAgentsByRole(List<AgentModel> agents) {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.separateAgentsByRole');
    try {
      return super.separateAgentsByRole(agents);
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getAgentsStatus: ${getAgentsStatus},
agentModelList: ${agentModelList},
tabs: ${tabs},
agents: ${agents},
agentsByRole: ${agentsByRole}
    ''';
  }
}
