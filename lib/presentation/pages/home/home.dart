import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/presentation/pages/home/widgets/project_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectList = const [
    ProjectDetails(
      cover: AppImages.vipexCover,
      logo: AppImages.vipexLogo,
      title: 'Vipex',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      appStoreUrl: 'https://apps.apple.com/az/app/vipex-az/id1540343396',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.isen.vipex&hl=en&gl=US',
    ),
    ProjectDetails(
      cover: AppImages.yaxCover,
      logo: AppImages.yaxLogo,
      title: 'Yaxpoint',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      appStoreUrl: 'https://apps.apple.com/az/app/yaxpoint/id6461823321',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.client.yaxpoint',
    ),
    ProjectDetails(
      cover: AppImages.yaxDriverCover,
      logo: AppImages.yaxLogo,
      title: 'Yaxpoint Driver',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      appStoreUrl: 'https://apps.apple.com/az/app/yaxpoint-driver/id6461868365',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.driver.yaxpoint',
    ),
    ProjectDetails(
      cover: AppImages.movementCover,
      logo: AppImages.movementLogo,
      title: 'Movement',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      appStoreUrl: 'https://apps.apple.com/az/app/movementaz/id1621734005',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.movement',
    ),
    ProjectDetails(
      cover: AppImages.ceoEventsCover,
      logo: AppImages.ceoEventsLogo,
      title: 'CEO Events',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.ceo_events_new',
    ),
    ProjectDetails(
      cover: AppImages.accessoriesCover,
      logo: AppImages.accessoriesLogo,
      title: 'Yes Accessories',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      googlePlayUrl:
          ' https://play.google.com/store/apps/details?id=com.yes.accessories&hl=en&gl=US',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Text(
            'This website is made with Flutter',
            style: AppTextStyles.styleW700.copyWith(fontSize: 30),
          ),
          Text(
            'Projects',
            style: AppTextStyles.styleW700.copyWith(fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ProjectListItem(
              project: projectList[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}
