
# Art Buttons kh customize libary

Art buttons kh package lets you add a beautiful.
This is a customizable button library for Flutter that provides a set of pre-designed buttons that you can use in your app. The library includes a variety of button styles, such as flat buttons, raised buttons, and icon buttons, as well as support for customizing the button's color, shape, and text.

## Features

- A variety of button styles to choose from, including flat, raised, and icon buttons.
- Support for customizing the button's color, shape, and text.
- Easy to use API that makes it simple to add buttons to your app.
- Fully compatible with Flutter's Material Design guidelines.

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



##Customization
The Art Buttons Kh widget supports a number of properties that you can use to customize the button's appearance, including:

- `text`: The text to display on the button.
- `onPressed`: A callback that will be called when the button is pressed.
- `color`: The background color of the button.
- `backgroundColor`: The color of background on the button.
- `borderRadius`: The radius of the button's corners.
- `margin`: The amount of padding around the button's text.


## Example
For example, to create a button with white text, you could use the following code:



```dart
ArtButtonsKh(
  onPressed: _submitForm,
  text: 'Login',
  backgroundColor: Theme.of(context).primaryColor,
),
```



## LICENSE

This `README.md` file provides an overview of your button library, explains how to install and use it, and provides examples of how to customize the button's appearance. You should customize the file to match the specific features and functionality of your button library.


