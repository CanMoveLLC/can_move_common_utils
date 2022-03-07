import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundUrlImage extends StatelessWidget {
  const RoundUrlImage({
    Key? key,
    this.width = 150,
    this.height = 150,
    this.elevation = 0,
    this.imageUrl,
    this.loading = false,
    this.onTap,
    this.radius,
  }) : super(key: key);

  final double width, height, elevation;
  final double? radius;
  final bool loading;
  final VoidCallback? onTap;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 100),
      ),
      elevation: elevation,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? 100),
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 100),
          ),
          clipBehavior: Clip.antiAlias,
          child: loading
              ? CircularProgressIndicator(
            strokeWidth: 2,
          )
              : imageUrl == null
              ? Icon(
            Icons.person_outline,
            size: width / 2,
          )
              : imageUrl!.contains("assets") ?
          Image.asset(imageUrl!)
              : CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.fill,
            width: width,
            height: height,
            progressIndicatorBuilder:
                (context, url, downloadProgress) =>
                CircularProgressIndicator(
                    value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
