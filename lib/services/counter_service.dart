import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:observable_ish/observable_ish.dart';

@Singleton()
class CounterService with ReactiveServiceMixin {
  final RxValue<int> _counter = RxValue<int>(0);

  CounterService() {
    listenToReactiveValues([_counter]);
  }

  int get counter => _counter.value;

  void incrementCounter() {
    _counter.value++;
  }

  void doubleCounter() {
    _counter.value *= 2;
  }
}
