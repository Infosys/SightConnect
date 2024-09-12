import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/formfielddata.dart';
import 'package:flutter/material.dart';

class RelationShipField extends StatelessWidget {
  const RelationShipField({
    super.key,
    this.onSelected,
    this.initialValue,
  });

  final Function(String)? onSelected;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController fieldController,
        FocusNode focusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return TextFormField(
          controller: fieldController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          focusNode: focusNode,
          onFieldSubmitted: (_) => onFieldSubmitted(),
          validator: (value) {
            value = value ?? "";
            if (value.isEmpty) {
              return "Relationship is required";
            }
            return null;
          },
          decoration: const InputDecoration(labelText: "Relationship *"),
          onChanged: (value) {
            onSelected?.call(value);
          },
        );
      },
      displayStringForOption: (String option) => option,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }
        return relationShips.where((String option) {
          return option
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase().trim());
        });
      },
      onSelected: onSelected,
    );
  }
}
