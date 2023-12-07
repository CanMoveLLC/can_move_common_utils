import 'package:can_move_common_utils/model/move.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

/// This class is a stateless widget in a Flutter application.
/// It represents a part of the UI that displays the drop-off addresses for a given move.
/// The MoveDropOffAddressPart widget takes a Move object as a parameter, which presumably contains information about the move, including drop-off addresses.
/// The UI consists of a container containing a column with drop-off address information and a dotted line below it.
class MoveDropOffAddressPart extends StatelessWidget {
  // Constructor for the widget, taking a 'Move' object as a parameter.
  const MoveDropOffAddressPart({
    super.key,
    required this.move,
  });

  // The 'Move' object containing information about the move.
  final Move move;

  // Build method required by StatelessWidget, defines the widget's UI.
  @override
  Widget build(BuildContext context) {
    // Container to hold the entire widget's content.
    return Container(
      // Padding around the container.
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      // Set the width of the container to the screen width.
      width: screenWidth(context),
      // Column to arrange children vertically.
      child: Column(
        // Align children to the center vertically.
        mainAxisAlignment: MainAxisAlignment.center,
        // Align children to the start horizontally.
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding around the column of drop-off addresses.
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5,
            ),
            // Column containing drop-off address information.
            child: Column(
              // Map drop-off addresses to a list of UI elements.
              children: move.dropOffs
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                      ),
                      // Row containing drop-off address and an image.
                      child: Row(
                        children: [
                          // Expanded widget to take remaining space.
                          Expanded(
                            // Text widget displaying the drop-off address.
                            child: Text(
                              e.address,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // Image widget displaying a destination pin.
                          Image.asset(
                            "assets/images/dest_pin.png",
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          // Dotted line separating drop-off addresses from other content.
          FDottedLine(
            color: Colors.grey,
            width: screenWidth(context),
            strokeWidth: 0.5,
            dottedLength: 5.0,
            space: 2.0,
          ),
        ],
      ),
    );
  }
}

/// The MovePickUpAddressPart class is a StatelessWidget in Flutter, representing a part of a UI that displays the pickup address for a move.
/// It takes a Move object as a parameter and renders the address along with a pin image.
/// The class uses Flutter widgets like Container, Column, Padding, Row, Text, Image, and a custom-drawn dotted line (FDottedLine).
class MovePickUpAddressPart extends StatelessWidget {
  const MovePickUpAddressPart({
    super.key,
    required this.move,
  });

  // Represents the move for which the pickup address is displayed
  final Move move;

  @override
  Widget build(BuildContext context) {
    // Container to hold the entire pickup address UI
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: screenWidth(context),
      // Column to vertically arrange the address text, pin image, and dotted line
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding to add space around the address text and pin image
          Padding(
            padding: const EdgeInsets.all(10.0),
            // Row to horizontally arrange the address text and pin image
            child: Row(
              children: [
                // Expanded Text widget to display the pickup address with max 3 lines
                Expanded(
                  child: Text(
                    move.pickUp.address,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Image widget to display a pin icon
                Image.asset(
                  "assets/images/pick_pin.png",
                  height: 30,
                ),
              ],
            ),
          ),
          // Custom-drawn dotted line using FDottedLine widget
          FDottedLine(
            color: Colors.grey,
            width: screenWidth(context),
            strokeWidth: 0.5,
            dottedLength: 5.0,
            space: 2.0,
          ),
        ],
      ),
    );
  }
}
