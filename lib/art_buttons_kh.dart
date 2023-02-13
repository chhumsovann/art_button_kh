

library art_button_kh;
import 'package:flutter/material.dart';

class ArtButtonsKh extends StatelessWidget {
  final Function? onPressed;
  final String? text;
  final Color? textColor;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? disableBackgroundColor;
  final EdgeInsetsGeometry? margin;
  final double? radius;
  final double? elevation;
  final double? fontSize = 18;

  const ArtButtonsKh({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.height,
    this.width,
    this.backgroundColor = Colors.black,
    this.margin,
    this.disableBackgroundColor,
    this.radius,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      constraints: BoxConstraints.tightFor(
        width: width ?? double.infinity,
        height: height ?? 44,
      ),
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              );

            } else if (states.contains(MaterialState.disabled)) {
              return TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              );
            } else {
              return TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              );
            }
          }),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return backgroundColor!;
              } else if (states.contains(MaterialState.disabled)) {
                return disableBackgroundColor ?? Theme.of(context).primaryColor;
              }
              return backgroundColor!;
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
            ),
          ),
          elevation: MaterialStateProperty.all(elevation ?? 0),
        ),
        child: Text(
          '$text',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
