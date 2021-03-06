import 'package:app_mvvm/app/app.locator.dart';
import 'package:app_mvvm/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
