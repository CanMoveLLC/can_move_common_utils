import 'package:flutter/material.dart';

import 'package:can_move_common_utils/ui/theme.dart';
import '../values/gradients.dart';

class RoundArcClip extends StatelessWidget {
  const RoundArcClip({
    Key? key,
  }) : super(key: key);

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
    final path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.6);

    var firstEndpoint = Offset(size.width * 0.5, size.height * 0.6);
    var firstControlPoint = Offset(size.width * 0.25, size.height * 0.4);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * 0.8);
    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.8);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ArcShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.6);

    var firstEndpoint = Offset(0, size.height * 0.6);
    var firstControlPoint = Offset(size.width * 0.5, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * 0.6);
    var secondControlPoint = Offset(size.width * 0.5, size.height * 0.8);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ReverseWaveShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.8);

    var firstEndpoint = Offset(size.width * 0.5, size.height * 0.8);
    var firstControlPoint = Offset(size.width * 0.25, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * 0.6);
    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.6);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ReverseWaveShapeClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.0, size.height * 0.0);

    var firstEndpoint = Offset(size.width * 0.5, size.height * -0.8);
    var firstControlPoint = Offset(size.width * 0.25, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndpoint.dx, firstEndpoint.dy);

    var secondEndpoint = Offset(size.width, size.height * -0.6);
    var secondControlPoint = Offset(size.width * 0.75, size.height * -0.6);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndpoint.dx, secondEndpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
