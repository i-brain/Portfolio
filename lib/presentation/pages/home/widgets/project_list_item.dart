import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/presentation/pages/home/widgets/online_store_button.dart';
import '../../../../core/constants/assets.dart';

class ProjectListItem extends StatelessWidget {
  const ProjectListItem({
    super.key,
    required this.project,
  });

  final ProjectDetails project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        project.logo,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    project.title,
                    style: AppTextStyles.styleBold
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnlineStoreButton(
                    title: 'Google Play',
                    imageAsset: AppImages.googlePlayLogo,
                    url: 'https://google.com',
                  ),
                  OnlineStoreButton(
                    title: 'App Store',
                    imageAsset: AppImages.appStoreLogo,
                    url: '',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
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
