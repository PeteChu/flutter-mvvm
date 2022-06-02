import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:app_mvvm/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => model.navigateToProfileView(),
                  child: const Text('Navigate to Profile View'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
