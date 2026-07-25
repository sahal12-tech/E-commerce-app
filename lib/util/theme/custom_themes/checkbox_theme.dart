import 'package:flutter/material.dart';

///custom class for light & dark text theme
class ECheckboxTheme {
  ECheckboxTheme._(); // to avoid creating instance

  /// Customizable Light Text theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateColor.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return Colors.blue;
      }
      else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateColor.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return Colors.blue;
      }
      else {
        return Colors.transparent;
      }
    }),
  );
}
