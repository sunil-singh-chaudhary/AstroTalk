import 'package:astrotalk_project/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    debugPrint('image URL full is-- > $imageUrl');
    debugPrint('image URL full created-- > ${CreateImageUrl(imageUrl)}');
    return CachedNetworkImage(
      imageUrl: CreateImageUrl(imageUrl),
      key: UniqueKey(),
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
            ),
          ),
        );
      },
    );
  }
}
