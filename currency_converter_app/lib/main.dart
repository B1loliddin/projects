import 'package:currency_converter_app/app.dart';
import 'package:currency_converter_app/core/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();

  runApp(const CurrencyConverterApp());
}
