import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum AppFlavor { dev, stage, prod }

/// Defines the flavor and the inhrerited properties for that particular flavor
///
///
///
class Flavor extends InheritedWidget {
  const Flavor({
    required this.flavor,
    required this.baseUrl,
    required Widget child,
    Key? key,
  }) : super(child: child, key: key);

  final AppFlavor flavor;
  final String baseUrl;

  // Expose the flavor as a string
  String get appFlavor => describeEnum(flavor);

  static Flavor of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Flavor>() as Flavor;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
