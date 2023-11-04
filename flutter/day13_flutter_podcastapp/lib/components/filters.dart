import 'package:flutter/material.dart';
import 'package:choice/choice.dart';

class InlineWrapped extends StatefulWidget {
  const InlineWrapped({super.key});

  @override
  State<InlineWrapped> createState() => _InlineWrappedState();
}

class _InlineWrappedState extends State<InlineWrapped> {
  List<String> choices = [
    'Trending',
    'Hot News',
    'Subscribed',
    '100daysofcode',
    'Shubham',
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
            color: Colors.transparent,
          ),
          elevation: 0,
          selectedColor: const Color(0xFFEB3323),
          labelStyle: TextStyle(
            color: state.selected(choices[i]) ? Colors.white : Colors.black,
          ),
          showCheckmark: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.grey[200],
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
          vertical: 2,
        ),
      ),
    );
  }
}
