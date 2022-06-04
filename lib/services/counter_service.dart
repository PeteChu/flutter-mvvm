import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class CounterService with ReactiveServiceMixin {
  final RxValue<int> _counter = RxValue<int>(0);
  int get counter => _counter.value;

  CounterService() {
    listenToReactiveValues([_counter]);
  }

  void incrementCounter() {
    _counter.value++;
    notifyListeners();
  }

  void doubleCounter() {
    _counter.value *= 2;
    notifyListeners();
  }
}
