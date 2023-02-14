library art_button_kh;

import 'package:flutter/material.dart';

class ArtButtonsKh extends StatelessWidget {

  /// for click action
  final Function? onPressed;
  /// change text on button
  final String? text;
  /// change color on text
  final Color? textColor;
  /// set height
  final double? height;
  ///set width
  final double? width;
  ///change background
  final Color? backgroundColor;
  ///change disable color
  final Color? disableBackgroundColor;
  /// set margin from button to button
  final EdgeInsetsGeometry? margin;

  ///set radius value
  final double? radius;
  ///set customer radius if customizeBorderRadius have value, it will skip radius value
  final BorderRadius? customizeBorderRadius;
  /// set shadow
  final double? elevation;
  /// set fontSize
  final double? fontSize;
  /// set lineSize on circle button , this property work only when isCircle button true
  final double? lineSize;
  /// set button to disable
  final bool? isDisable;

  /// add pre icon
  final Widget? prefixesIcons;
  /// add suffixes icon
  final Widget? suffixesIcons;

  /// add icon in circle button
  final Widget? circleIcon;

  /// set main axis on button when include with icon
  final MainAxisAlignment? mainAxisAlignment;
  /// set condition if you want button as outline
  final bool? isOutlineButton;

  /// set condition if you want button as circle
  final bool? isCircleButton;

  const ArtButtonsKh({
    Key? key,
    required this.onPressed,
    this.text,
    this.textColor,
    this.height,
    this.width,
    this.backgroundColor = Colors.black,
    this.margin,
    this.disableBackgroundColor,
    this.radius,
    this.elevation,
    this.isDisable,
    this.prefixesIcons,
    this.suffixesIcons,
    this.mainAxisAlignment,
    this.isOutlineButton,
    this.customizeBorderRadius,
    this.isCircleButton,
    this.circleIcon,
    this.lineSize,
    this.fontSize = 12
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ///circle button rendering
    return (isCircleButton ?? false)

        ? Container(
            child: (isOutlineButton ?? false)
                ? GestureDetector(
                    onTap: (isDisable ?? false) ? null : onPressed as void Function()?,
                    child: Material(
                      elevation: elevation ?? 1,
                      shape: const CircleBorder(),
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, border: Border.all(color: backgroundColor ?? Colors.red, width: lineSize ?? 1)),
                        child: circleIcon,
                      ),
                    ),
                  )
                : MaterialButton(
                    onPressed: (isDisable ?? false) ? null : onPressed as void Function()?,
                    color: backgroundColor,
                    textColor: textColor,
                    shape: const CircleBorder(),
                    elevation: elevation ?? 1,
                    child: circleIcon,
                  ),
          )
    ///square button rendering

        : Container(
            margin: margin ?? EdgeInsets.zero,
            constraints: BoxConstraints.tightFor(
              width: width ?? double.infinity,
              height: height ?? 44,
            ),
            child: (isOutlineButton ?? false)
                ? OutlinedButton(
                    onPressed: (isDisable ?? false) ? null : onPressed as void Function()?,
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
                          }
                          return Colors.transparent;
                        },
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              customizeBorderRadius == null ? BorderRadius.circular(radius ?? 8) : customizeBorderRadius ?? BorderRadius.circular(0),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(elevation ?? 0),
                    ),
                    child: Row(
                      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: prefixesIcons,
                        ),
                        Text(
                          text ?? '',
                          style: TextStyle(color: textColor),
                        ),
                        Container(
                          child: suffixesIcons,
                        ),
                      ],
                    ),
                  )
                : ElevatedButton(
                    onPressed: (isDisable ?? false) ? null : onPressed as void Function()?,
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
                            return disableBackgroundColor ?? const Color(0xFFCCCCCC);
                          }
                          return backgroundColor!;
                        },
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              customizeBorderRadius == null ? BorderRadius.circular(radius ?? 8) : customizeBorderRadius ?? BorderRadius.circular(0),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(elevation ?? 0),
                    ),
                    child: Row(
                      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: prefixesIcons,
                        ),
                        Text(
                          text ?? '',
                          style: TextStyle(color: textColor),
                        ),
                        Container(
                          child: suffixesIcons,
                        ),
                      ],
                    ),
                  ),
          );
  }
}
