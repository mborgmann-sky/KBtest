#  Introduction

Just a collection of information about customizing keyboards + [demo app](https://github.com/mborgmann-sky/KBtest).

## Notes

Apple makes it difficult to modify keyboard. I see no way to easily change fonts, background color, and button colors without being recejted at the app review. 

## Custom Keyboard Experience

- In iOS there’s a ‘Custom Keyboard Extension’ target, but not tvOS
- [No custom keyboard in TVML](https://forums.developer.apple.com/thread/95416)
- [Maybe a custom keyboard with ReactNative](https://github.com/udfalkso/react-native-example-ios-keyboard)
- [TvOSPinKeyboard - just a custom view controller](https://github.com/zattoo/TvOSPinKeyboard)
- tvOS keyboard looks: default, light, dark
- [build a keyboard yourself with a UICollectionView in your RootViewController](https://stackoverflow.com/a/36829956)
- No UISearchBar in tvOS

## Light & Dark Mode

Modify 'User Interface Style' in Info.plist to Automatic|Light|Dark to setup style for UIKit & TVML.

## Demo App

- Just a prototype testfield. Change isTVML in AppDelegate for UIKit or TVML demo.
- Select the appropriate resource loader in main.js to load a specific TVML page.

### Change Properites in Subview

I tried to change properties once the keyboard is loaded (currently only for the first textfield after beginning to edit).

## Button Color

- Not supported out-of-the-box.
- For iOS there's a [hack](https://stackoverflow.com/a/36829956) and another [hack](https://stackoverflow.com/a/36829956), but will likely not pass app review.

## Background Color

- It seems not to be possible to change the background color, except chosing dark & light mode.
- However, the keyboard background has opacity and will blur the background
- By hiding the parent viewcontrollers UI elements in e.g. textFieldDidBeginEditing, a plane background can be achived which also applies tones on the button color. 

## TVML

Keyboard input is supported with searchbarTemplate and formTemplate.

## Other Apps

Have not discovered yet another a custimized keyboard.
