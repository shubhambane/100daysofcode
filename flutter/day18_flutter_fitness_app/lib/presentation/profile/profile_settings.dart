import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import '../../data/user_data.dart';
import '../../widgets/setting_tile.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        SettingTile(
          icon: FluentIcons.approvals_app_24_regular,
          title: 'Physical Activity',
          subtitle: UserData.user.lastActivity,
          onTap: () {},
        ),
        SettingTile(
          icon: FluentIcons.document_one_page_24_regular,
          title: 'Statistics',
          subtitle: UserData.user.statRun,
          onTap: () {},
        ),
        SettingTile(
          icon: FluentIcons.arrow_routing_24_regular,
          title: 'Routes',
          subtitle: UserData.user.totalRoutes,
          onTap: () {},
        ),
        SettingTile(
          icon: FluentIcons.trophy_24_regular,
          title: 'Best time',
          subtitle: UserData.user.bestTime,
          onTap: () {},
        ),
        SettingTile(
          icon: FluentIcons.flash_20_regular,
          title: 'Equipments',
          subtitle: UserData.user.equipment,
          onTap: () {},
        ),
      ],
    );
  }
}
