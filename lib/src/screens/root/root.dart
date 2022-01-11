import 'package:flutter/material.dart';
import 'package:life_goals_app/src/screens/home/root.dart';
import 'package:life_goals_app/src/screens/new_goal/root.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NewGoalRoot();
  }
}
