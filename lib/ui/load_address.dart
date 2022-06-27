import 'package:can_move_common_utils/model/load.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

class LoadDropOffAddressPart extends StatelessWidget {
  const LoadDropOffAddressPart({
    Key? key,
    required this.load,
  }) : super(key: key);

  final Load load;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: screenWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5,
            ),
            child: Column(
              children: load.dropOffs
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              e.address,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
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

class LoadPickUpAddressPart extends StatelessWidget {
  const LoadPickUpAddressPart({
    Key? key,
    required this.load,
  }) : super(key: key);

  final Load load;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: screenWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    load.pickUp.address,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Image.asset(
                  "assets/images/pick_pin.png",
                  height: 30,
                ),
              ],
            ),
          ),
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
