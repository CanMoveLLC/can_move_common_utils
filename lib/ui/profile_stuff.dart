import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:can_move_common_utils/ui/theme.dart';


import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/ui/custom_buttons.dart';
import 'package:can_move_common_utils/ui/notify.dart';
import 'package:can_move_common_utils/ui/profile_stuff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            color: imageUrl == null ? colorScheme(context).secondary : null,
          ),
          clipBehavior: Clip.antiAlias,
          child: loading
              ? Padding(padding: EdgeInsets.all(20),
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
            fit: BoxFit.fill,
            width: width,
            height: height,
            progressIndicatorBuilder:
                (context, url, downloadProgress) =>
                Padding(padding: EdgeInsets.all(20),
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress, strokeWidth: 2,),
                ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
