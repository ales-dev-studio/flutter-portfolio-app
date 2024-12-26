import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

/// get app version from pubspec file
Future<String> getAppVersion() async {
  String version = '';
  try {
    final String pubspecFile = await rootBundle.loadString('pubspec.yaml');
    final yaml = loadYaml(pubspecFile);
    version = yaml['version'].toString().split('+').first;
    return version;
  } catch (e) {
    return version;
  }
}