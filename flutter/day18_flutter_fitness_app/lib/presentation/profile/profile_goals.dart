import 'package:flutter/material.dart';
import '../../data/user_data.dart';
import '../../widgets/profile_goal_widget.dart';

class ProfileGoals extends StatelessWidget {
  const ProfileGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileGoalWidget(
          goalTitle: 'Start Weight',
          goalValue: UserData.user.startWeight,
          valueUnit: 'kg',
          titleColor: const Color(0XFFB2EBB8),
        ),
        const SizedBox(width: 8),
        ProfileGoalWidget(
          goalTitle: 'Goal',
          goalValue: UserData.user.goal,
          valueUnit: 'kg',
          titleColor: const Color(0XFFB6EEF5),
        ),
        const SizedBox(width: 8),
        ProfileGoalWidget(
          goalTitle: 'Daily calories',
          goalValue: UserData.user.dailyCal,
          valueUnit: 'kcal',
          titleColor: const Color(0XFFFEC774),
        ),
      ],
    );
  }
}
