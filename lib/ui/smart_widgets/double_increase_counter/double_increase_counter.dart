import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:app_mvvm/ui/smart_widgets/double_increase_counter/double_increase_counter_viewmodel.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Tap to increment the counter',
                  textAlign: TextAlign.center,
                ),
                Text(model.counter.toString())
              ],
            )),
      ),
    );
  }
}
