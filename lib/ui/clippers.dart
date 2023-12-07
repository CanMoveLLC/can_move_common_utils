import 'package:flutter/material.dart';

import 'package:can_move_common_utils/ui/theme.dart';
import '../values/gradients.dart';

class RoundArcClip extends StatelessWidget {
  const RoundArcClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ClipPath(
        clipper: ArcShapeClipper(),
        child: Container(
          height: screenSize(context).height * 0.5,
          width: screenSize(context).width,
          decoration: BoxDecoration(
            gradient: Gradients.primaryGradient(context),
          ),
        ),
      ),
    );
  }
}

class WaveShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.6);

    final Offset firstEndpoint = Offset(
      size.width * 0.5,
      size.height * 0.6,
    );
    final Offset firstControlPoint = Offset(
      size.width * 0.25,
      size.height * 0.4,
    );

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndpoint.dx,
      firstEndpoint.dy,
    );

    final Offset secondEndpoint = Offset(
      size.width,
      size.height * 0.8,
    );
    final Offset secondControlPoint = Offset(
      size.width * 0.75,
      size.height * 0.8,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndpoint.dx,
      secondEndpoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldClipper) {
    return true;
  }
}

class ArcShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.6);

    final Offset firstEndpoint = Offset(
      0,
      size.height * 0.6,
    );
    final Offset firstControlPoint = Offset(
      size.width * 0.5,
      size.height * 0.8,
    );

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndpoint.dx,
      firstEndpoint.dy,
    );

    final Offset secondEndpoint = Offset(
      size.width,
      size.height * 0.6,
    );
    final Offset secondControlPoint = Offset(
      size.width * 0.5,
      size.height * 0.8,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndpoint.dx,
      secondEndpoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldClipper) {
    return true;
  }
}

class ReverseWaveShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.8);

    final Offset firstEndpoint = Offset(
      size.width * 0.5,
      size.height * 0.8,
    );
    final Offset firstControlPoint = Offset(
      size.width * 0.25,
      size.height,
    );

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndpoint.dx,
      firstEndpoint.dy,
    );

    final Offset secondEndpoint = Offset(
      size.width,
      size.height * 0.6,
    );
    final Offset secondControlPoint = Offset(
      size.width * 0.75,
      size.height * 0.6,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndpoint.dx,
      secondEndpoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldClipper) {
    return true;
  }
}

class ReverseWaveShapeClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.0);

    final Offset firstEndpoint = Offset(
      size.width * 0.5,
      size.height * -0.8,
    );
    final Offset firstControlPoint = Offset(
      size.width * 0.25,
      size.height,
    );

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    final Offset secondEndpoint = Offset(size.width, size.height * -0.6);
    final Offset secondControlPoint = Offset(
      size.width * 0.75,
      size.height * -0.6,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndpoint.dx,
      secondEndpoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<dynamic> oldClipper) {
    return true;
  }
}
