import 'package:flutter/material.dart';

import '../exports/contracts.dart';

class TextChangedServiceImpl implements TextChangedService {

  // @override
  // set input(String text) {
  //   onInputChanged?.call(t);
  // }

  // @override
  // set output(String text) {
  //   onInputChanged?.call(t);
  // }

  @override
  ValueChanged<String>? onInputChanged;
  
  @override
  ValueChanged<String>? onOutputChanged;
}
