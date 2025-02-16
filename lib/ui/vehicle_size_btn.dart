import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

import '../model/driver.dart';

/// This class defines a reusable button widget for selecting vehicle sizes.
/// It encapsulates the visual representation of the button along with logic for handling taps and styling based on the selected state.
/// The code is well-organized, making use of Flutter's widget structure effectively.
/// It facilitates easy integration into a broader application for selecting and displaying vehicle sizes.
class VehicleSizeBtn extends StatelessWidget {
  const VehicleSizeBtn({
    super.key,
    required this.size,
    required this.onTap,
    this.width = 120,
    this.height = 130,
    this.selected = false,
  });

  /// Defining the attributes of the widget, including the size of the vehicle,
  /// dimensions (width and height) of the button, whether it is selected or not,
  /// and a callback function onTap for handling button taps.
  final VehicleSize size;
  final double width;
  final double height;
  final bool selected;
  final void Function(VehicleSize size) onTap;

  @override
  Widget build(BuildContext context) {
    /// Extracting details from the VehicleSize enum.
    /// Converting the enum to a string, modifying its format, and converting it to lowercase to create an image path.
    var str = size.toString().split(".").last;
    var name = str.replaceAll("_", " ");
    var img = str.toLowerCase();
    return Padding(
    padding: const EdgeInsets.only(right: 16),
    child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => onTap(size),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: selected
                ? colorScheme(context).primary
                : textTheme(context).bodySmall!.color!,
            width: 0.5,
          ),
          color: selected ? colorScheme(context).secondary : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset(
                  "assets/images/$img.png",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Add padding around the text
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
