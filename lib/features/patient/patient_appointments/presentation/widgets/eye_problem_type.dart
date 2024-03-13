import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../shared/theme/app_shadow.dart';

class EyeProblemType extends ConsumerStatefulWidget {
  const EyeProblemType({super.key});

  @override
  ConsumerState<EyeProblemType> createState() => _EyeProblemTypeState();
}

class _EyeProblemTypeState extends ConsumerState<EyeProblemType> {
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
    var data = ref.watch(bookAppointmentProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          style: const TextStyle(
            fontFamily: 'Roboto',
          ),
          // readOnly: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  if (_currentInput.isEmpty) {
                    _currentInput = "All Data";
                    _filteredSuggestions = educationalQualifications;
                  } else {
                    _currentInput = '';
                    _filteredSuggestions = [];
                  }
                });
              },
              child: const Icon(
                Icons.arrow_drop_down,
                color: AppColor.grey,
              ),
            ),
            hintText: 'Select the type of eye problem',
            hintStyle: applyRobotoFont(
              color: AppColor.grey,
              fontSize: 14,
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: AppColor.white,
                )),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: AppColor.white,
                )),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: AppColor.white,
                )),
            fillColor: Colors.white,
            filled: true,
          ),
          controller: _controller,
          onChanged: (value) {
            data.setSelectedEyeProblem(value);
          },
          focusNode: _focusNode,
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
              child: SingleChildScrollView(
                child: Column(children: [
                  ..._filteredSuggestions.map(
                    (suggestion) => ListTile(
                      title: Text(suggestion),
                      onTap: () {
                        data.setSelectedEyeProblem(suggestion);
                        _controller.text = suggestion;
                        _filteredSuggestions = [];
                        _focusNode.unfocus();
                      },
                    ),
                  ),
                ]),
              )),
      ],
    );
  }
}
