import 'package:app_mvvm/app/app.locator.dart';
import 'package:app_mvvm/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final String _pagename = 'This is the Profile Page';
  String get pageName => _pagename;

  final _navigationService = locator<NavigationService>();

  void navigateToHomeView() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
