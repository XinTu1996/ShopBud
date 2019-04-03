import 'package:flutter/material.dart';

class PageWithError extends InheritedWidget {
  final Function validationErrorCallback;
  final Widget child;

  PageWithError({this.validationErrorCallback, this.child})
      : super(child: child);

  static PageWithError of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(PageWithError);

  @override
  bool updateShouldNotify(PageWithError oldWidget) =>
      validationErrorCallback != oldWidget.validationErrorCallback;
}
