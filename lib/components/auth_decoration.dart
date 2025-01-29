import 'package:flutter/material.dart';
import 'package:teste_flutter/_core/myColors.dart';

InputDecoration getAutenticationInputDecoration(String label) {
  return InputDecoration(
    label: Text(label),
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(64)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: MyColors.deepBlue, width: 4),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: Colors.red, width: 4),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: Colors.red, width: 4),
    ),
  );
}
