import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:app_mvvm/views/future_example/future_example_viewmodel.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      viewModelBuilder: () => FutureExampleViewModel(),
      builder: (context, model, child) {
        return Center(
          child: model.hasError
              ? Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'an expected error has occurred while running the future',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              : Center(
                  child: model.isBusy
                      ? const CircularProgressIndicator()
                      : Text(model.data ?? '')),
        );
      },
    );
  }
}
