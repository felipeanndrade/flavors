import 'package:flavors/src/app.dart';
import 'package:flavors/src/core/settings/flavors.dart';
import 'package:flutter/material.dart';

void main() {
  // Defines prod flavor for this main file
  const Flavor flavor = Flavor(
    flavor: AppFlavor.prod,
    baseUrl: "www.google.com.br",
    child: MyApp(),
  );

  runApp(flavor);
}
