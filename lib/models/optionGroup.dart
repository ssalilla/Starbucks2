import 'package:starbucks/models/option.dart';

enum OptionGroupType { CHECK, RADIO }

class OptionGroup {
  final int id;
  final String title;
  final OptionGroupType type;
  final List<Option> options;
  final int? groupValue;

  OptionGroup({
    required this.id,
    required this.title,
    required this.options,
    this.groupValue,
    this.type = OptionGroupType.CHECK,
  });

  Option? getGroupValueOption() {
    final option =
        this.options.where((element) => element.id == this.groupValue);
    if (option.length > 0) {
      return option.first;
    }
    return null;
  }

  OptionGroup copyWith({required int groupValue}) {
    return OptionGroup(
        id: this.id,
        options: [...this.options],
        title: this.title,
        type: this.type,
        groupValue: groupValue);
  }
}
