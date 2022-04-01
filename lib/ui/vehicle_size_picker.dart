import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/driver.dart';
import 'vehicle_size_btn.dart';

class VehicleSizePicker extends StatefulHookWidget {
  VehicleSizePicker({
    Key? key,
    required this.size$,
    this.showAll = true,
    this.scrollToInitial = false,
  }) : super(key: key);

  final ValueNotifier<VehicleSize> size$;
  final bool showAll;
  final bool scrollToInitial;

  @override
  State<VehicleSizePicker> createState() => _VehicleSizePickerState();
}

class _VehicleSizePickerState extends State<VehicleSizePicker> {
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.scrollToInitial)
      WidgetsBinding.instance?.addPostFrameCallback((_) =>
          itemScrollController.scrollTo(
              index: VehicleSize.values.indexOf(widget.size$.value) + 1,
              duration: Duration(milliseconds: 200)));
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.showAll)
      return Center(
        child: VehicleSizeBtn(
          size: widget.size$.value,
          selected: true,
          onTap: (s) => widget.size$.value = s,
        ),
      );

    var widgets = <Widget>[
      SizedBox(width: 25),
      for (var size in VehicleSize.values)
        VehicleSizeBtn(
          size: size,
          selected: widget.size$.value == size,
          onTap: (s) => widget.size$.value = s,
        ),
      SizedBox(width: 15)
    ];

    return Container(
      height: 130,
      child: ScrollablePositionedList.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widgets.length,
        itemBuilder: (context, index) => widgets[index],
        itemScrollController: itemScrollController,
      ),
    );
  }
}
