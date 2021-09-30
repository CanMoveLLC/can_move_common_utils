import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

import '../model/driver.dart';

class VehicleSizeBtn extends StatelessWidget {
  const VehicleSizeBtn({
    Key? key,
    required this.size,
    required this.onTap,
    this.selected = false,
  }) : super(key: key);

  final VehicleSize size;
  final bool selected;
  final Function(VehicleSize size) onTap;

  @override
  Widget build(BuildContext context) {
    var str = size.toString().split(".").last;
    var name = str.replaceAll("_", " ");
    var img = str.toLowerCase();
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        onTap(size);
      },
      child: Container(
        height: 110,
        width: 110,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: colorScheme(context).primary,
            width: 0.5,
          ),
          color: colorScheme(context).secondary,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/$img.png",
                      height: 60,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: Text(name),
                    ),
                  ],
                ),
              ],
            ),
            if (selected)
              Padding(
                padding: const EdgeInsets.only(right: 2.0, bottom: 2.0),
                child: Icon(
                  Icons.done,
                  color: Colors.green,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
