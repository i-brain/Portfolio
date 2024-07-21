import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/assets.dart';
import 'package:portfolio/presentation/pages/home/widgets/project_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectList = const [
    ProjectDetails(
      logo: AppImages.yaxLogo,
      title: 'Yaxpoint',
      appStoreUrl: 'https://apps.apple.com/az/app/yaxpoint/id6461823321',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.client.yaxpoint',
    ),
    ProjectDetails(
      logo: AppImages.yaxLogo,
      title: 'Yaxpoint Driver',
      appStoreUrl: 'https://apps.apple.com/az/app/yaxpoint-driver/id6461868365',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.driver.yaxpoint',
    ),
    ProjectDetails(
      logo: AppImages.tezibuLogo,
      title: 'Tezibu',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.a7575.tezibu.client',
    ),
    ProjectDetails(
      logo: AppImages.movementLogo,
      title: 'Movement',
      appStoreUrl: 'https://apps.apple.com/az/app/movementaz/id1621734005',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.movement',
    ),
    ProjectDetails(
      title: 'Rahat Kart',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=frazex.com.inloya.rahat',
      appStoreUrl: null,
      logo: AppImages.rahatLogo,
    ),
    ProjectDetails(
      title: 'RA9 Group',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.onlinestore.cinemaplaza',
      appStoreUrl: 'https://apps.apple.com/az/app/ra9-group/id1571044002',
      logo: AppImages.ra9Logo,
    ),
    ProjectDetails(
      title: 'Hollywood Group',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.hollywood',
      appStoreUrl: 'https://apps.apple.com/az/app/hollywood-group/id1583295007',
      logo: AppImages.hollywoodLogo,
    ),
    ProjectDetails(
      title: 'Lilac.az',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazec.onlinestore.lilac',
      appStoreUrl: 'https://apps.apple.com/az/app/lilac-az/id1535781509',
      logo: AppImages.lilacLogo,
    ),
    ProjectDetails(
      logo: AppImages.vipexLogo,
      title: 'Vipex',
      appStoreUrl: 'https://apps.apple.com/az/app/vipex-az/id1540343396',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.isen.vipex&hl=en&gl=US',
    ),
    ProjectDetails(
      logo: AppImages.nextipsLogo,
      title: 'Nextips',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.nextips.sports',
    ),
    ProjectDetails(
      logo: AppImages.ceoEventsLogo,
      title: 'CEO Events',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.frazex.ceo_events_new',
    ),
    ProjectDetails(
      logo: AppImages.accessoriesLogo,
      title: 'Yes Accessories',
      googlePlayUrl:
          ' https://play.google.com/store/apps/details?id=com.yes.accessories&hl=en&gl=US',
    ),
  ];
  int crossAxisCount = 3;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double childAspectRatio = size.width / size.height;
    if (size.width < 750) {
      crossAxisCount = 1;
    } else if (size.width < 1050) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 3;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: crossAxisCount,
        childAspectRatio:
            crossAxisCount == 1 ? childAspectRatio * 2 : childAspectRatio,
        children: projectList
            .map((element) => ProjectListItem(project: element))
            .toList(),
      ),
    );
  }
}
