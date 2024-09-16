import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/local/form_field_data.dart';
import 'package:flutter/material.dart';

class RelationShipField extends StatelessWidget {
  const RelationShipField({
    super.key,
    this.onSelected,
    this.initialValue,
    this.enabled = true,
  });

  final Function(String)? onSelected;
  final String? initialValue;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(labelText: "Relationship *"),
      items: relationShips.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: enabled
          ? (String? newValue) {
              onSelected?.call(newValue ?? "");
            }
          : null,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Relationship is required";
        }
        return null;
      },
    );
  }
}
