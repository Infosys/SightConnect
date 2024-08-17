import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_intimation_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/en_form_initimation_response_entity.dart';

class EbFormInitmationMapper {
  EbFormInitmationMapper._();

  static EBFormIntimationResponseEntity toEntity(
      EBFormIntimationResponseModel model) {
    try {
      return EBFormIntimationResponseEntity(
        timelineName: model.timelineName,
        timelineVersion: model.timelineVersion,
        stage: _mapStage(model.stage),
      );
    } catch (e) {
      // Handle or log the error as needed
      rethrow;
    }
  }

  static StageEntity? _mapStage(Stage? stage) {
    try {
      if (stage == null) return null;
      return StageEntity(
        name: stage.name,
        version: stage.version,
        logoPosition: stage.logoPosition,
        formLayoutType: stage.formLayoutType,
        pages: _mapPages(stage.pages),
      );
    } catch (e) {
      // Handle or log the error as needed
      rethrow;
    }
  }

  static List<PageEntity>? _mapPages(List<Page>? pages) {
    try {
      return pages
          ?.map((page) => PageEntity(
                title: page.title,
                pageNumber: page.pageNumber,
                elements: _mapElements(page.elements),
              ))
          .toList();
    } catch (e) {
      // Handle or log the error as needed
      rethrow;
    }
  }

  static List<ElementEntity>? _mapElements(List<Element>? elements) {
    try {
      return elements
          ?.map((element) => ElementEntity(
                name: element.name,
                type: element.type,
                prefix: element.prefix,
                title: element.title,
                description: element.description,
                repeats: element.repeats,
                minRepeat: element.minRepeat,
                maxRepeat: element.maxRepeat,
                elements: _mapElements(element.elements),
              ))
          .toList();
    } catch (e) {
      // Handle or log the error as needed
      rethrow;
    }
  }
}
