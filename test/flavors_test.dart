import 'package:flavors/src/core/settings/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

void main() {
  Logger logger = Logger();
  group("Flavors", () {
    test("Should return Flavor config for dev environment", () {
      Flavor dev = const Flavor(
        baseUrl: "www.google.com.br",
        flavor: AppFlavor.dev,
        child: SizedBox(),
      );
      String actual = dev.appFlavor;
      String expected = "dev";
      logger.d("Actual: $actual\nExpect: $expected");
      expect(actual, expected);
    });
    test("Should return Flavor config for stage environment", () {
      Flavor stg = const Flavor(
        flavor: AppFlavor.stage,
        baseUrl: "www.youtube.com.br",
        child: SizedBox(),
      );
      String actual = stg.appFlavor;
      String expected = "stage";
      logger.d("Actual: $actual\nExpected: $expected");
      expect(actual, expected);
    });
    test("Should return Flavor config for prod environment", () {
      Flavor prod = const Flavor(
        flavor: AppFlavor.prod,
        baseUrl: "www.gmail.com.br",
        child: SizedBox(),
      );
      String actual = prod.appFlavor;
      String expected = "prod";
      logger.d("Actual: $actual\nExpected: $expected");
      expect(actual, expected);
    });
  });
}
