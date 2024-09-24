import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum FilterType { string, date, dropdown }

class Filter {
  final String? name;
  final String? hintText;
  final FilterType type;
  String? value; // Made mutable
  List<String>? dropdownOptions;

  Filter({
    this.name,
    this.hintText,
    required this.type,
    this.value,
    this.dropdownOptions,
  });
}

class FilterBottomSheet extends StatefulWidget {
  final List<Filter> filterOptions;
  final List<Filter> selectedFilters;
  final Function(List<Filter>) onApply;

  const FilterBottomSheet({
    super.key,
    required this.filterOptions,
    required this.selectedFilters,
    required this.onApply,
  });

  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late List<Filter> _selectedFilters;

  @override
  void initState() {
    super.initState();
    _selectedFilters = List.from(widget.selectedFilters);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              const Text(
                'Filters',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  setState(() {
                    for (var filter in _selectedFilters) {
                      filter.value = null;
                    }
                    _selectedFilters.clear();
                  });
                },
                child: const Text('Clear all'),
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: widget.filterOptions.length,
            itemBuilder: (context, index) {
              final filter = widget.filterOptions[index];
              return _buildFilterWidget(filter);
            },
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey.shade300,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              top: BorderSide(
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  widget.onApply(_selectedFilters);
                  Navigator.pop(context);
                },
                child: const Text('Apply'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFilterWidget(Filter filter) {
    switch (filter.type) {
      case FilterType.string:
        return CheckboxListTile(
          dense: true,
          title: filter.name == null
              ? Container()
              : Text(
                  filter.name!,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
          value: _selectedFilters.contains(filter),
          onChanged: (value) {
            setState(() {
              if (value!) {
                _selectedFilters.add(filter);
              } else {
                _selectedFilters.remove(filter);
              }
            });
          },
        );
      case FilterType.date:
        return ListTile(
          leading: const Icon(Icons.calendar_today),
          dense: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (filter.name != null)
                Text(
                  filter.name!,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              const SizedBox(height: 4),
              Text(
                filter.value != null
                    ? DateFormat.yMd()
                        .format(DateTime.parse(filter.value!).toLocal())
                    : 'Select date',
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.darkGrey,
                ),
              ),
            ],
          ),
          trailing: filter.value != null
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      filter.value = null;
                      _selectedFilters.remove(filter);
                    });
                  },
                )
              : null,
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              final adjustedPicked =
                  DateTime(picked.year, picked.month, picked.day, 12, 0, 0);
              setState(() {
                filter.value = adjustedPicked.toUtc().toIso8601String();

                if (!_selectedFilters.contains(filter)) {
                  _selectedFilters.add(filter);
                }
              });
            }
          },
        );
      case FilterType.dropdown:
        return ListTile(
          dense: true,
          title: filter.name == null
              ? Container()
              : Text(
                  filter.name!,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
          subtitle: Row(
            children: [
              Expanded(
                child: DropdownButton<String>(
                  value: filter.value,
                  hint: filter.hintText != null
                      ? Text(filter.hintText!)
                      : const Text('Select Option'),
                  items: filter.dropdownOptions?.map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(
                        option.contains('_')
                            ? option.replaceAll('_', ' ')
                            : option,
                        style: applyRobotoFont(
                            fontSize: 14, color: AppColor.darkGrey),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      filter.value = newValue;
                      if (!_selectedFilters.contains(filter)) {
                        _selectedFilters.add(filter);
                      }
                    });
                  },
                  underline: Container(), // Remove underline
                ),
              ),
              if (filter.value != null)
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      filter.value = null;
                      _selectedFilters.remove(filter);
                    });
                  },
                ),
            ],
          ),
        );
      default:
        return Container();
    }
  }
}
