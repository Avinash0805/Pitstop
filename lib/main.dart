import 'package:flutter/material.dart';
import 'firstpage.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  };
  runApp(new MaterialApp(
    home:Firstpage(),
  ));
}
