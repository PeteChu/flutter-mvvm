import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'This message is fetched from server';
  }

  @override
  void onError(error) {
    // do something on error
    print('has an error');
  }

  @override
  Future<String> futureToRun() => getDataFromServer();
}
