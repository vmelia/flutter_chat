import 'package:flutter/material.dart';

abstract class TextChangedService {
  ValueChanged<String>? onInputChanged;
  ValueChanged<String>? onOutputChanged;
}
