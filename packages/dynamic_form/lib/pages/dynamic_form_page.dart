import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/data/mappers/dynamic_form_json_mapper.dart';
import 'package:dynamic_form/data/models/dynamic_form_json_model.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_error_widget.dart';
import 'package:dynamic_form/shared/widgets/loader_widget.dart';
import 'package:flutter/material.dart';

class DynamicFormPage extends StatefulWidget {
  const DynamicFormPage({
    super.key,
    this.onSubmit,
    this.backButtonIcon = Icons.arrow_back,
    this.enableDraft = false,
    this.canPop = false,
    this.initialValue,
    required this.json,
  });

  final Function(Map<String, dynamic>? data, DynamicFormSavingType mode)?
      onSubmit;
  final bool enableDraft;
  final dynamic json;
  final dynamic initialValue;
  final IconData backButtonIcon;
  final bool canPop;

  @override
  _DynamicFormPageState createState() => _DynamicFormPageState();
}

class _DynamicFormPageState extends State<DynamicFormPage> {
  late Future<ResponseJsonEntity>? _futureJson;

  @override
  void initState() {
    super.initState();
    _futureJson = _loadJson();
  }

  Future<ResponseJsonEntity>? _loadJson() async {
    try {
      Log.f(widget.json);
      return DynamicFormJsonMapper().modeltoEntity(
        dynamicFormModel: ResponseJsonModel.fromJson(widget.json),
        initialValues: {
          "3501800": [
            {
              "3501801": "OS",
              "3501802": null,
              "3501803": "INFLAMATION",
              "3501804": "qq",
              "3501805": "LACERATION",
              "3501806": "bb",
              "3501807": "DISCHARGE",
              "3501808": "vv",
              "3501809": "CLOUDINESS",
              "3501810": "bb",
              "3501811": "ARCUS",
              "3501812": "ff",
              "3501813": "PHAKIC",
              "3501814": "BROWN",
              "3501815": "tt",
              "3501816": "rr",
              "3501817": "YES",
              "3501818": "ee",
              "3501819": "ww",
              "3501820": "REJECTED",
              "3501821": "yy"
            },
            {
              "3501801": "OD",
              "3501802": null,
              "3501803": "CONTUSION",
              "3501804": "qq",
              "3501805": "UNREMARKABLE",
              "3501806": "ww",
              "3501807": "PETECHIA",
              "3501808": "ee",
              "3501809": "UNREMARKABLE",
              "3501810": "rr",
              "3501811": "ARCUS",
              "3501812": "tt",
              "3501813": "APHAKIC",
              "3501814": "BLACK",
              "3501815": "yy",
              "3501816": "uu",
              "3501817": "NO",
              "3501818": "ii",
              "3501819": "oo",
              "3501820": "ACCEPTED",
              "3501821": "pp"
            }
          ],
          "3501900": [
            {
              "3501901": "IN_SITU",
              "3501902": "2024-08-22 12:00:00.000",
              "3501903": "a",
              "3501904": "12",
              "3501905": "12",
              "3501906": "TRANSPLANT",
              "3501907": "MK_MEDIUM",
              "3501908": "12",
              "3501909": "2024-08-22 12:00:00.000",
              "3501910": "YES"
            },
            {
              "3501901": "ENCLEATION",
              "3501902": "2024-08-29 12:00:00.000",
              "3501903": "23",
              "3501904": "23",
              "3501905": "23",
              "3501906": "RESEARCH",
              "3501907": "MK_MEDIUM",
              "3501908": "23",
              "3501909": "2024-08-30 12:00:00.000",
              "3501910": "YES"
            }
          ],
          "3501601": "DEATH_CERTIFICATE",
          "3501602": "NOT_COOLED",
          "3501603": "2024-08-23 12:00:00.000",
          "3501604": "2024-08-23 18:00:00.000",
          "3501701": "NO",
          "3501702": "",
          "3501703": "No",
          "3501704": "abc",
          "3501705": "abc",
          "3501707": "YES",
          "3501708": "NO",
          "3501709": "YES",
          "3501710": "UNABLE_TO_VISUALIZE",
          "3501711": "ss",
          "3501712": "NO",
          "3501713": "YES",
          "3501714": "NO",
          "3501715": "YES",
          "3501716": "YES",
          "3501717": "NO",
          "3501718": "vv",
          "3501719": "ACCEPTED",
          "3501720": "bb",
          "3502002": "NO",
          "3502004": "2024-08-23 12:00:00.000",
          "3502005": "12",
          "3502007": "NO",
          "3502008": "no",
          "3502010": "2024-08-23 12:00:00.000",
          "3502011": "11",
          "3502012": "22",
          "3502014": "NO",
          "3502016": "44",
          "3502017": "2024-08-23 12:00:00.000",
          "3502018": "55",
          "3502019": "REJECTED",
          "3502020": "vv",
          "3502102": null,
          "3502103": null,
          "3502104": null,
          "3502107": null,
          "3502108": null,
          "3502109": null,
          "3502110": null,
          "3502111": null,
          "3502112": null,
          "3502116": "zz",
          "3502117": "2024-08-24 12:00:00.000",
          "3502118": "cc",
          "3502119": "vv",
          "3502122": "bb",
          "3502123": "2024-08-30 17:00:00.000",
          "3502124": "nn",
          "3502125": "mm",
          "3502128": "aa",
          "3502129": "2024-08-14 16:00:00.000",
          "3502130": "dd",
          "3502131": "ff",
          "3502132": "gg",
          "3502133": "hh",
          "3502135": "aa",
          "3502136": "ss",
          "3502138": "YES",
          "3502139": "NO",
          "3502141": "ff",
          "3502142": "2024-08-23 12:00:00.000",
          "3502144": "hh",
          "3502145": "2024-08-07 12:00:00.000",
          "3502147": "2024-08-23 12:00:00.000",
          "3502149": "ACCEPTED",
          "3502150": "kk"
        },
      );
    } catch (e) {
      log('DF:Error Converting json: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureJson,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final pages = snapshot.data?.pages ?? [];
          final title = snapshot.data?.name ?? '';
          final FormLayoutType formLayout =
              snapshot.data?.formLayoutType ?? FormLayoutType.PANEL;
          return FormBuilderPage(
            pages: pages,
            title: title,
            onSubmit: widget.onSubmit,
            layoutType: formLayout,
            backButtonIcon: widget.backButtonIcon,
            enableDraft: widget.enableDraft,
            canPop: widget.canPop,
          );
        } else if (snapshot.hasError) {
          return FormErrorWidget(
            error: snapshot.error,
            stackTrace: snapshot.stackTrace.toString(),
          );
        } else {
          return const LoaderWidget();
        }
      },
    );
  }
}
