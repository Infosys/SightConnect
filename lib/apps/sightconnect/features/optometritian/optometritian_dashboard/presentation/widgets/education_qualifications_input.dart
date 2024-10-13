/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:math';

import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EducationalQualificationInput extends ConsumerStatefulWidget {
  const EducationalQualificationInput({super.key});

  @override
  ConsumerState<EducationalQualificationInput> createState() =>
      _EducationalQualificationInputState();
}

class _EducationalQualificationInputState
    extends ConsumerState<EducationalQualificationInput> {
  String _currentInput = '';
  final educationalQualifications = [
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
        _filteredSuggestions = educationalQualifications
            .where((suggestion) =>
                suggestion.toLowerCase().contains(_currentInput.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(optometritianAddPatientProvider);

    return Column(
      children: [
        TextFormField(
          style: const TextStyle(
            fontFamily: 'Roboto',
          ),
          // readOnly: true,
          controller: _controller,
          onChanged: (value) => data.setEducationalQualification(value),
          focusNode: _focusNode,
          decoration: InputDecoration(
            labelText: "Educational Qualifications",
            labelStyle: applyRobotoFont(
              fontSize: 14,
            ),
          ),
        ),
        if (_currentInput.isNotEmpty)
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
                    data.setEducationalQualification(
                        _filteredSuggestions[index]);
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
