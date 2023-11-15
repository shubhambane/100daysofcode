import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import '../../data/user_data.dart';
import '../../widgets/stat_count.dart';
import '../../widgets/stat_cta.dart';

class ProfileStatistics extends StatelessWidget {
  const ProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              StatCount(
                statTitle: 'Follow',
                statValue: UserData.user.followCount,
              ),
              const SizedBox(width: 20),
              StatCount(
                statTitle: 'Followers',
                statValue: UserData.user.followersCount,
              ),
            ],
          ),
          Row(
            children: [
              StatCta(
                onTap: () {},
                icon: FeatherIcons.externalLink,
              ),
              StatCta(
                onTap: () {},
                icon: FeatherIcons.edit3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
