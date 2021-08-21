import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;
  final String title;
  const CustomContainer({
    Key key,
    @required this.backgroundColor,
    @required this.progressColor,
    @required this.progress,
    @required this.size,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0)),
                child: Container(
                  height: size * progress,
                  color: progressColor,
                ),
              ),
            ),
            Center(
              child: Container(
                  height: 50,
                  width: 50,
                  child: FlutterLogo(
                    size: 160,
                  )),
            ),
            Positioned(
              top: size / 1.1,
              right: 0,
              left: size * 1.3,
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
