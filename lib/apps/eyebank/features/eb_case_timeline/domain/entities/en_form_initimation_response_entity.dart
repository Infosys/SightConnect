class EBFormIntimationResponseEntity {
  final String? timelineName;
  final String? timelineVersion;
  final StageEntity? stage;

  EBFormIntimationResponseEntity({
    this.timelineName,
    this.timelineVersion,
    this.stage,
  });

  @override
  String toString() {
    return 'EBFormIntimationResponseModelEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, stage: $stage)';
  }
}

class StageEntity {
  final String? name;
  final String? version;
  final String? logoPosition;
  final String? formLayoutType;
  final List<PageEntity>? pages;

  StageEntity({
    this.name,
    this.version,
    this.logoPosition,
    this.formLayoutType,
    this.pages,
  });

  @override
  String toString() {
    return 'StageEntity(name: $name, version: $version, logoPosition: $logoPosition, formLayoutType: $formLayoutType, pages: $pages)';
  }
}

class PageEntity {
  final String? title;
  final int? pageNumber;
  final List<ElementEntity>? elements;

  PageEntity({
    this.title,
    this.pageNumber,
    this.elements,
  });

  @override
  String toString() {
    return 'PageEntity(title: $title, pageNumber: $pageNumber, elements: $elements)';
  }
}

class ElementEntity {
  final String? name;
  final String? type;
  final String? prefix;
  final String? title;
  final String? description;
  final bool? repeats;
  final int? minRepeat;
  final int? maxRepeat;
  final List<ElementEntity>? elements;

  ElementEntity({
    this.name,
    this.type,
    this.prefix,
    this.title,
    this.description,
    this.repeats,
    this.minRepeat,
    this.maxRepeat,
    this.elements,
  });

  @override
  String toString() {
    return 'ElementEntity(name: $name, type: $type, prefix: $prefix, title: $title, description: $description, repeats: $repeats, minRepeat: $minRepeat, maxRepeat: $maxRepeat, elements: $elements)';
  }
}
