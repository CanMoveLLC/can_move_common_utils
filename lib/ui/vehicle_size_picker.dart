import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../model/driver.dart';
import 'vehicle_size_btn.dart';

class VehicleSizePicker extends HookWidget {
  const VehicleSizePicker({
    Key? key,
    required this.size$,
    this.showAll = true,
  }) : super(key: key);

  final ValueNotifier<VehicleSize> size$;
  final bool showAll;

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      if (showAll) SizedBox(width: 25),
    ];
    for (var size in VehicleSize.values) {
      if (showAll || (!showAll && size$.value == size)) {
        widgets.add(
          VehicleSizeBtn(
            size: size,
            selected: size$.value == size,
            onTap: (s) => size$.value = s,
          ),
        );
      }
    }
    if (showAll)
      widgets.add(SizedBox(
        width: 15,
      ));
    var row = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          showAll ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.center,
      children: widgets,
    );
    if (showAll)
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 1),
        child: row,
      );
    else
      return row;
  }
}
