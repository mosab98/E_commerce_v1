import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_octicons/flutter_octicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColors.grey2),
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "General",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.user),
                          title: Text(
                            "Edit Profile",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.lock),
                          title: Text(
                            "Change Password",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.bell),
                          title: Text(
                            "Notification",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.shield),
                          title: Text(
                            "Security",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.globe),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Language",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "English",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.grey),
                              ),
                            ],
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Preferencess",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(Icons.shield_outlined),
                          title: Text(
                            "Legal & Policies",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(Icons.live_help_outlined),
                          title: Text(
                            "Help & Support",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            FontAwesomeIcons.angleRight,
                            color: AppColors.grey,
                          ),
                          onTap: () {},
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 44),
                    child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: const Icon(Icons.logout_outlined,
                              color: Colors.red),
                          title: Text(
                            "Logout",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                          ),
                          onTap: () {},
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
