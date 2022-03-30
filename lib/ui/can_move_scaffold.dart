import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// automatically change system overlay to appropriate brightness
class CanMoveScaffold extends StatelessWidget {
  const CanMoveScaffold(
      {Key? key, required this.body, 
        this.floatingActionButton,
        this.floatingActionButtonLocation,
        this.appBar})
      : super(key: key);

  final Widget body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: theme(context).brightness == Brightness.light
          ? SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      )
          : SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: appBar,
        body: body,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
