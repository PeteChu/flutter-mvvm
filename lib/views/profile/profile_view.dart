import 'package:app_mvvm/views/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(model.pageName),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () => model.navigateToHomeView(),
                    child: const Text('Navigate to Home View'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
