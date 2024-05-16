import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/preliminary_assessment_helper_provider.dart';

class PreliminaryAssessmentEquipmentSelection extends ConsumerStatefulWidget {
  const PreliminaryAssessmentEquipmentSelection({super.key});

  @override
  ConsumerState<PreliminaryAssessmentEquipmentSelection> createState() =>
      _PreliminaryAssessmentEquipmentSelectionState();
}

class _PreliminaryAssessmentEquipmentSelectionState
    extends ConsumerState<PreliminaryAssessmentEquipmentSelection> {
  String _currentInput = '';

  final equipmentsList = [
    "Primary Education",
    "Secondary Education",
    "Higher Secondary Education",
    "Vocational Training / Diploma",
    "Undergraduate Education",
    "Postgraduate Education",
    "Doctoral Education",
    "Post-Doctoral Edcuation",
    "Professional Degree",
    "Specialized Certification",
    "Not Applicable",
  ];

  List<String> _filteredSuggestions = [];
  final _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentInput = _controller.text;
        _filteredSuggestions = equipmentsList
            .where((suggestion) =>
                suggestion.toLowerCase().contains(_currentInput.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(preliminaryAssessmentHelperProvider);

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: AppSize.width(context) * 0.75,
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: applyRobotoFont(),
                // readOnly: true,
                controller: _controller,
                onChanged: (value) => data.setEquipment(value),
                focusNode: _focusNode,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.grey, width: 1.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.grey, width: 1.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primary, width: 1.0),
                  ),
                  labelText: "Select Equipment",
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (_filteredSuggestions.isEmpty) {
                    _filteredSuggestions = equipmentsList;
                  } else {
                    _filteredSuggestions = [];
                  }
                });
              },
              child: _filteredSuggestions.isEmpty
                  ? const Icon(Icons.keyboard_arrow_down)
                  : const Icon(Icons.keyboard_arrow_up),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: min(_filteredSuggestions.length * AppSize.kl * 2,
              AppSize.height(context) * 0.5),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: applyMediumShadow(),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            // itemCount: min(5, _filteredSuggestions.length),
            itemCount: _filteredSuggestions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_filteredSuggestions[index]),
                onTap: () {
                  data.setEquipment(_filteredSuggestions[index]);
                  _controller.text = _filteredSuggestions[index];
                  _filteredSuggestions = [];
                  _focusNode.unfocus();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
