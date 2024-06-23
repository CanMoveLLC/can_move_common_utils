import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

import '../model/driver.dart';

class VehicleSizeBtn extends StatelessWidget {
  const VehicleSizeBtn({
    Key? key,
    required this.size,
    required this.onTap,
    this.width = 120,
    this.height = 130,
    this.selected = false,
  }) : super(key: key);

  final VehicleSize size;
  final double width;
  final double height;
  final bool selected;
  final Function(VehicleSize size) onTap;

  @override
  Widget build(BuildContext context) {
    var str = size
        .toString()
        .split(".")
        .last;
    var name = str.replaceAll("_", " ");
    var img = str.toLowerCase();
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          onTap(size);
        },
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: selected ? colorScheme(context).primary : textTheme(
                  context).bodySmall!.color!,
              width: 0.5,
            ),
            color: selected ? colorScheme(context).secondary : null,
          ),
          child: Column(
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
        ),
      ),
    );
  }
}
