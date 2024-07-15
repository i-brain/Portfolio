import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class OnlineStoreButton extends StatefulWidget {
  const OnlineStoreButton({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.url,
  });

  final String title;
  final String imageAsset;
  final String url;

  @override
  State<OnlineStoreButton> createState() => _OnlineStoreButtonState();
}

class _OnlineStoreButtonState extends State<OnlineStoreButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovering = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () => _launcUrl(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: isHovering ? Colors.black12 : null,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Image.asset(
                widget.imageAsset,
                height: 60,
                width: 60,
              ),
              const SizedBox(height: 10),
              Text(
                widget.title,
                style: AppTextStyles.styleBold.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                ),
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launcUrl() {
    js.context.callMethod('open', [widget.url]);
  }
}
