import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Function to log errors using the Catcher package
void logError(Exception error, [StackTrace? trace]) {
  // Utilize the Catcher package to report checked errors with optional stack trace.
  Catcher.reportCheckedError(error, trace);
}

// Get the URL for the proxy server
String get proxyUrl {
  // Return the URL for the proxy server.
  return "https://canmove-9c01c.web.app";
}

// Get the URL for Cloud Functions
String get functionsUrl {
  // Return the URL for Cloud Functions.
  return "https://canmove-9c01c.web.app";
}

// Get the URL for Google Maps API
String get mapApiUrl {
  // Return the base URL for the Google Maps API.
  return "maps.googleapis.com:443/maps/api";
}

// Get the appropriate Google Maps API key based on the platform
String get mapKey {
  // Return the Google Maps API key based on the platform (Web, Android, iOS).
  if (kIsWeb) {
    return "AIzaSyCb7VJJwNI702hJzsSnyV7xs-ppfSitp0Q";
  } else if (Platform.isAndroid) {
    return "AIzaSyALM_J69fPCvTvXVE3DfPXPjBaN3FcvVk0";
  } else {
    return "AIzaSyCuOdg0tpuyPK3me3oQGYAmo6iTLXAEbBI";
  }
}

// Function to display a dialog for selecting an image source
Future<String?> selectImage(BuildContext context) {
  // Show a dialog with options to take a picture or select from the gallery.
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      titleTextStyle: TextStyle(
        color: colorScheme(context).primary,
        fontWeight: FontWeight.bold,
      ),
      title: const Text("Add Photo"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Option to take a picture
          InkWell(
            onTap: () async {
              // Dismiss the dialog and return the path of the taken photo.
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Take a picture",
                      style: textTheme(context).bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 1.0),
          // Option to select from the gallery
          InkWell(
            onTap: () async {
              // Dismiss the dialog and return the path of the selected image from the gallery.
              Navigator.of(context).pop(await _selectFromGallery());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.image,
                    color: colorScheme(context).primary,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Select from gallery",
                      style: textTheme(context).bodyMedium,
                    ),
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

// Function to handle selecting an image from the gallery
Future<String?> _selectFromGallery() async {
  try {
    // Use the ImagesPicker package to select an image from the gallery.
    return ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then<String?>((XFile? result) => result?.path);
  } on Exception catch (error, stack) {
    // Log errors that occur during image selection.
    logError(error, stack);
    return null;
  }
}

// Function to handle taking a photo
Future<String?> _takePhoto() async {
  try {
    // Use the ImagesPicker package to take a photo.
    return ImagePicker()
        .pickImage(source: ImageSource.camera)
        .then<String?>((XFile? result) => result?.path);
  } on Exception catch (error, stack) {
    // Log errors that occur during photo capture.
    logError(error, stack);
    return null;
  }
}

// Function to get the router using AutoRoute
StackRouter router(BuildContext context) {
  // Return the AutoRouter stack router for navigation.
  return AutoRouter.of(context);
}
