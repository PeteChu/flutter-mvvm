import 'package:app_mvvm/views/home/home_view.dart';
import 'package:app_mvvm/views/profile/profile_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:app_mvvm/services/counter_service.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: ProfileView)
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: CounterService),
])
class AppSetup {}
