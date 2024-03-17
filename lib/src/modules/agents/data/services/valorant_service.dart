
import 'package:dio/dio.dart';

import '../../l10n/text_l10n.dart';
import '../error/failure.dart';
import '../models/agent_model.dart';

class ValorantService{

final TextL10n text = TextL10n();

  ValorantService(Object object);

  String statusCodeToMessage(int? statusCode) {
    switch (statusCode) {
      case 200:
        return text.sucess;
      case 404:
        return text.notFound;
      case 500:
        return text.serverError;
      default:
        return text.unknownError;
    }
  }

Future<List<AgentModel>> getAgents() async {
  try {
    Dio dio = Dio();
    Response response = await dio.get('https://valorant-api.com/v1/agents?language=pt-BR&isPlayableCharacter=true');
    
    if (response.statusCode == 200) {
      List<dynamic> agentData = response.data['data'];
      List<AgentModel> agents = agentData.map((agent) => AgentModel.fromJson(agent)).toList();
      return agents;
    } else {
      throw Failure(
        errorCode: response.statusCode,
        errorMessage: statusCodeToMessage(response.statusCode),
      );
    }
  } catch (e) {
    throw InternalServerError(e.toString());
  }
}
}

