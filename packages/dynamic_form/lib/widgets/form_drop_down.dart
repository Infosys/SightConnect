import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDropDown extends StatelessWidget {
  const FormDropDown({
    super.key,
    required this.field,
    this.onChanged,
  });

  final ElementElementClassEntity field;
  final Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = field.title;
    final String hint = field.description;
    final List<DropdownMenuItem<Object?>> options = field.choices!
        .map((element) => DropdownMenuItem<Object?>(
              value: element.name,
              child: Text(
                element.title,
                maxLines: 1,
              ),
            ))
        .toList();

    if (!field.isRequired) {
      options.insert(
          0,
          DropdownMenuItem<Object?>(
            value: null,
            child: Text('--Select ${field.title}--'),
          ));
    }

    Object? getInitialValue() {
      try {
        if (field.initialValue != null) {
          final initialValue = field.initialValue;
          final values = options.map((option) => option.value).toList();
          if (values.contains(initialValue)) {
            return initialValue;
          } else {
            return null;
          }
        } else {
          return null;
        }
      } catch (e) {
        Log.e("FormDropDown getInitialValue error: $e");
        return null;
      }
    }

    return FormBuilderDropdown<Object?>(
      initialValue: getInitialValue(),
      name: field.name,
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      items: options,
      onChanged: onChanged,
      enabled: field.readOnly ? false : true,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
    );
  }
}






// import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';

// class FormDropDown extends StatelessWidget {
//   const FormDropDown({
//     super.key,
//     required this.field,
//     this.onChanged,
//   });

//   final ElementElementClassEntity field;
//   final Function(String?)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     final String label = field.title;
//     final String hint = field.description;
//     final List<DropdownMenuItem<String>> options = field.choices!
//         .map((element) => DropdownMenuItem<String>(
//               value: element.name,
//               child: Text(
//                 element.title,
//                 maxLines: 1,
//               ),
//             ))
//         .toList();

//     if (!field.isRequired) {
//       options.insert(
//           0,
//           DropdownMenuItem<String>(
//             value: null,
//             child: Text('--Select ${field.title}--'),
//           ));
//     }

//     String? getInitialValue() {
//       try {
//         // log('Initial Value: ${field.initialValue} ${field.name}');
//         if (field.initialValue != null && field.initialValue.isNotEmpty) {
//           final initialValue = field.initialValue;
//           final values = options.map((option) => option.value).toList();
//           if (values.contains(initialValue)) {
//             return initialValue;
//           } else {
//             // log('Initial value not in options, setting to null');
//             return null;
//           }
//         } else {
//           return null;
//         }
//       } catch (e) {
//         return null;
//       }
//     }

//     return FormBuilderDropdown<String>(
//       initialValue: getInitialValue(),
//       name: field.name,
//       autofocus: false,
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       decoration: InputDecoration(
//         labelText: label,
//         hintText: hint,
//         contentPadding:
//             const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//       ),
//       items: options,
//       onChanged: onChanged,
//       validator: field.isRequired
//           ? FormBuilderValidators.compose([FormBuilderValidators.required()])
//           : null,
//     );
//   }
// }
