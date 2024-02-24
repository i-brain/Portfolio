import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';

import '../../../../core/constants/assets.dart';

class ProjectListItem extends StatelessWidget {
  const ProjectListItem({
    super.key,
    required this.project,
  });

  final ProjectDetails project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(project.cover),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 100, child: Image.asset(project.logo)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    project.title,
                    style: AppTextStyles.styleW600.copyWith(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(project.description),
              // Spacer(),
              Row(
                children: [
                  const Spacer(),
                  Expanded(child: Image.asset(AppImages.googlePlayLogo)),
                  const Spacer(),
                  Expanded(child: Image.asset(AppImages.appStoreLogo)),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ProjectDetails {
  const ProjectDetails({
    required this.description,
    required this.title,
    required this.googlePlayUrl,
    this.appStoreUrl,
    required this.cover,
    required this.logo,
  });

  final String description;
  final String title;
  final String googlePlayUrl;
  final String? appStoreUrl;
  final String cover;
  final String logo;
}
