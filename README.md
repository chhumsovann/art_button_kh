
# Art Buttons kh Style

Art buttons kh package lets you add a beautiful gradient button to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  art_buttons_kh: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:art_buttons_kh/art_buttons_kh.dart';
```

## Example
There are a number of properties that you can modify:

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
<hr>

<table>
<tr>
<td>

```dart
ArtButtonsKh(
onPressed: _submitForm,
text: 'Login',
backgroundColor: Theme.of(context).primaryColor,
),
```

</td>
<td>
</td>
</tr>
</table>

## Next Goals

