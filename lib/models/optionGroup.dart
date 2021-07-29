import 'package:flutter/material.dart';
import 'package:starbucks/models/option.dart';

enum OptionGroupType { CHECK, RADIO }

class OptionGroupValue {
  OptionGroup group;
  UniqueKey? selected;

  OptionGroupValue({required this.group, this.selected});
}

class OptionGroup {
  final int id;
  final String title;
  final OptionGroupType type;
  final List<Option> options;

  OptionGroup({
    required this.id,
    required this.title,
    required this.options,
    this.type = OptionGroupType.CHECK,
  });
}
