import 'package:cached_network_image/cached_network_image.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

/// The RoundUrlImage class is a Flutter widget designed to display a round image fetched from a URL.
/// It provides options for customization, such as specifying dimensions, elevation, radius, and an optional loading indicator.
/// If no image URL is provided, it shows a placeholder.
/// It uses the CachedNetworkImage package for efficient loading and caching of network images.
class RoundUrlImage extends StatelessWidget {
  const RoundUrlImage({
    super.key,
    this.width = 150,
    this.height = 150,
    this.elevation = 0,
    this.radius = 100,
    this.imageUrl,
    this.loading = false,
    this.onTap,
  });

  final double width, height, elevation, radius;
  final bool loading;
  final VoidCallback? onTap;
  final String? imageUrl;

  /// The widget is wrapped in a Material widget with rounded shape and elevation.
  /// An InkWell is used for tapping functionality.
  /// The Container is the main content holder with specified dimensions and decoration.
  /// If loading is true, it shows a loading indicator; otherwise, it displays the image or placeholder.
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      elevation: elevation,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: imageUrl == null ? colorScheme(context).secondary : null,
          ),
          clipBehavior: Clip.antiAlias,

          /// The main content of the widget includes either a placeholder icon or the CachedNetworkImage widget for displaying the image from the provided URL.
          /// The placeholder icon is an outline person icon with primary color.
          /// CachedNetworkImage efficiently loads and caches network images with a progress indicator during loading and an error icon in case of failure.
          child: loading
              ? const Padding(
                  padding: EdgeInsets.all(20),
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
              : imageUrl == null
                  ? Icon(
                      Icons.person_outline,
                      size: width / 2,
                      color: colorScheme(context).primary,
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl!,
                      fit: BoxFit.cover,
                      width: width,
                      height: height,
                      progressIndicatorBuilder:
                          (_, String url, DownloadProgress downloadProgress) {
                        return Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(20),
                            child: CircularProgressIndicator(
                              value: downloadProgress.progress,
                              strokeWidth: 2,
                            ),
                          ),
                        );
                      },
                      errorWidget: (_, String url, error) {
                        return const Icon(Icons.error);
                      },
                    ),
        ),
      ),
    );
  }
}
