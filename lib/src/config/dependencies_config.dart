import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:valorant_app/src/modules/movies/data/services/valorant_service.dart';

import '../modules/movies/view/controllers/home_page_controller.dart';

void registerDependencies() {
  // Register Clients
  GetIt.I.registerSingleton<Dio>(Dio());

  // Register Services
  GetIt.I.registerFactory<ValorantService>(() => ValorantService(GetIt.I<Dio>()));

  // Register Controllers
  GetIt.I.registerSingleton<HomePageController>(HomePageController(GetIt.I<ValorantService>()));
}