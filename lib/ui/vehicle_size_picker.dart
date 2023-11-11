import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/driver.dart'; // Importing the model for VehicleSize
import 'vehicle_size_btn.dart'; // Importing a custom widget for the vehicle size button

/// This Flutter class, VehicleSizePicker, is a stateful widget designed for selecting a vehicle size.
/// It uses a custom widget, VehicleSizeBtn, to represent each size.
/// The widget includes features such as scrolling to the initially selected size and the option to show either all sizes or only the selected one.
class VehicleSizePicker extends StatefulHookWidget {
  VehicleSizePicker({
    Key? key,
    required this.size$,
    this.showAll = true,
    this.scrollToInitial = false,
  }) : super(key: key);

  /// The class VehicleSizePicker is defined as a stateful widget with parameters for managing the selected vehicle size (size$),
  /// A flag to show all sizes or only the selected one (showAll),
  /// And a flag to scroll to the initially selected size (scrollToInitial).
  final ValueNotifier<VehicleSize> size$;
  final bool showAll;
  final bool scrollToInitial;

  @override
  State<VehicleSizePicker> createState() => _VehicleSizePickerState();
}

class _VehicleSizePickerState extends State<VehicleSizePicker> {
  final ItemScrollController itemScrollController = ItemScrollController();

  /// The private state class _VehicleSizePickerState is created, initializing an ItemScrollController for controlling the scroll position.
  /// The initState method handles scrolling to the initially selected size if the scrollToInitial flag is true.
  @override
  void initState() {
    super.initState();
    // Scroll to the initially selected size if scrollToInitial is true
    if (widget.scrollToInitial)
      WidgetsBinding.instance.addPostFrameCallback((_) =>
          itemScrollController.scrollTo(
              index: VehicleSize.values.indexOf(widget.size$.value) + 1,
              duration: Duration(milliseconds: 200)));
  }

  /// The build method generates the widget tree.
  /// If showAll is false, it displays only the selected vehicle size.
  /// Otherwise, it creates a list of vehicle size buttons and presents them in a horizontal scrollable list using ScrollablePositionedList.
  /// Each button is handled by the VehicleSizeBtn widget.
  @override
  Widget build(BuildContext context) {
    // If showAll is false, display only the selected vehicle size
    if (!widget.showAll)
      return Center(
        child: VehicleSizeBtn(
          size: widget.size$.value,
          selected: true,
          onTap: (s) => widget.size$.value = s,
        ),
      );

    // Create a list of vehicle size buttons
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

    // Display the list of vehicle size buttons in a horizontal scrollable list
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
