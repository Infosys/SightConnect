import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_configuration_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_form_configuration_entity.dart';

class EbFormConfigurationMapper {
  EbFormConfigurationMapper._();

  static EBFormConfigurationEntity toEntity(
    EBFormConfigurationModel model,
  ) {
    try {
      return EBFormConfigurationEntity(
        name: model.name,
        version: model.version,
        logoPosition: model.logoPosition,
        formLayoutType: model.formLayoutType,
        pages: _mapPages(model.pages),
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
