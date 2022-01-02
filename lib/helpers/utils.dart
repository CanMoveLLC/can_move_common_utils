import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

void logError(Exception error, [StackTrace? trace]) {
  Catcher.reportCheckedError(error, trace);
}

String get proxyUrl {
  // return "http://localhost:5001/canmove-9c01c/us-central1/app";
  return "https://canmove-9c01c.web.app";
}

String get functionsUrl {
  // return "http://localhost:5001/canmove-9c01c/us-central1/app";
  return "https://canmove-9c01c.web.app";
}

String get mapApiUrl {
  return "maps.googleapis.com:443/maps/api";
}

String get mapKey {
  if (kIsWeb)
    return "AIzaSyCb7VJJwNI702hJzsSnyV7xs-ppfSitp0Q";
  else if (Platform.isAndroid)
    return "AIzaSyALM_J69fPCvTvXVE3DfPXPjBaN3FcvVk0";
  else
    return "AIzaSyCuOdg0tpuyPK3me3oQGYAmo6iTLXAEbBI";
}

Future<String?> selectImage(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      titleTextStyle: TextStyle(
        color: colorScheme(context).primary,
        fontWeight: FontWeight.bold,
      ),
      title: Text("Add Photo"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              Navigator.of(context).pop(await _takePhoto());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.camera,
                    color: colorScheme(context).primary,
                  ),
                  SizedBox(width: 10),
                  Expanded(child: Text("Take a picture")),
                ],
              ),
            ),
          ),
          Divider(height: 1.0),
          InkWell(
            onTap: () async {
              Navigator.of(context).pop(await _selectFromGallery());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.image,
                    color: colorScheme(context).primary,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text("Select from gallery"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Future<String?> _selectFromGallery() async {
  try {
    final res = await ImagesPicker.pick(
      count: 1,
      pickType: PickType.image,
      gif: false,
      quality: 0.3,
      maxSize: 500,
    );
    if (res == null || res.isEmpty == true) return null;
    return res.first.path;
  } on Exception catch (error, stack) {
    logError(error, stack);
    return null;
  }
}

Future<String?> _takePhoto() async {
  try {
    final res = await ImagesPicker.openCamera(
      pickType: PickType.image,
    );
    if (res == null || res.isEmpty == true) return null;
    return res.first.path;
  } on Exception catch (error, stack) {
    logError(error, stack);
    return null;
  }
}

StackRouter router(BuildContext context) {
  return AutoRouter.of(context);
}
