import 'package:flavors/src/app.dart';
import 'package:flavors/src/core/settings/flavors.dart';
import 'package:flutter/material.dart';

void main() {
  // Defines prod flavor for this main file
  const Flavor flavor = Flavor(
    flavor: AppFlavor.stage,
    baseUrl: "www.youtube.com.br",
    child: MyApp(),
  );

  runApp(flavor);
}
