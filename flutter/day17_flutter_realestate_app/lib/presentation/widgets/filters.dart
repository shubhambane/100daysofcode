import 'package:flutter/material.dart';
import 'package:choice/choice.dart';

class InlineWrapped extends StatefulWidget {
  const InlineWrapped({super.key});

  @override
  State<InlineWrapped> createState() => _InlineWrappedState();
}

class _InlineWrappedState extends State<InlineWrapped> {
  List<String> choices = [
    'Real Estate',
    'Apartment',
    'House',
    'Motels',
  ];

  String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Choice<String>.inline(
      multiple: false,
      clearable: false,
      value: ChoiceSingle.value(selectedValue),
      onChanged: ChoiceSingle.onChanged(setSelectedValue),
      itemCount: choices.length,
      itemBuilder: (state, i) {
        return ChoiceChip(
          side: const BorderSide(
            color: Colors.black12,
            width: 1,
          ),
          elevation: 0,
          selectedColor: Colors.black,
          labelStyle: TextStyle(
            color: state.selected(choices[i]) ? Colors.white : Colors.black54,
          ),
          showCheckmark: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.transparent,
          selected: state.selected(choices[i]),
          onSelected: state.onSelected(choices[i]),
          label: Text(
            choices[i],
          ),
        );
      },
      listBuilder: ChoiceList.createScrollable(
        clipBehavior: Clip.none,
        spacing: 10,
        runSpacing: 10,
        padding: const EdgeInsets.symmetric(
          vertical: 4,
        ),
      ),
    );
  }
}
