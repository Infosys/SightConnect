// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eua_on_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EuaOnSearchModel _$$_EuaOnSearchModelFromJson(Map<String, dynamic> json) =>
    _$_EuaOnSearchModel(
      context: json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EuaOnSearchModelToJson(_$_EuaOnSearchModel instance) =>
    <String, dynamic>{
      'context': instance.context?.toJson(),
      'message': instance.message?.toJson(),
      'error': instance.error?.toJson(),
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context(
      domain: json['domain'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      action: json['action'] as String?,
      coreVersion: json['coreVersion'] as String?,
      consumerId: json['consumerId'] as String?,
      consumerUri: json['consumerUri'] as String?,
      providerId: json['providerId'] as String?,
      providerUri: json['providerUri'] as String?,
      transactionId: json['transactionId'] as String?,
      messageId: json['messageId'] as String?,
      timestamp: json['timestamp'] as String?,
      key: json['key'] as String?,
      ttl: json['ttl'] as String?,
    );

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'country': instance.country,
      'city': instance.city,
      'action': instance.action,
      'coreVersion': instance.coreVersion,
      'consumerId': instance.consumerId,
      'consumerUri': instance.consumerUri,
      'providerId': instance.providerId,
      'providerUri': instance.providerUri,
      'transactionId': instance.transactionId,
      'messageId': instance.messageId,
      'timestamp': instance.timestamp,
      'key': instance.key,
      'ttl': instance.ttl,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      type: json['type'] as String?,
      code: json['code'] as String?,
      path: json['path'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'type': instance.type,
      'code': instance.code,
      'path': instance.path,
      'message': instance.message,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      catalog: json['catalog'] == null
          ? null
          : Catalog.fromJson(json['catalog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'catalog': instance.catalog?.toJson(),
    };

_$_Catalog _$$_CatalogFromJson(Map<String, dynamic> json) => _$_Catalog(
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      providers: (json['providers'] as List<dynamic>?)
          ?.map((e) => Provider.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      exp: json['exp'] == null ? null : DateTime.parse(json['exp'] as String),
    );

Map<String, dynamic> _$$_CatalogToJson(_$_Catalog instance) =>
    <String, dynamic>{
      'descriptor': instance.descriptor?.toJson(),
      'providers': instance.providers?.map((e) => e.toJson()).toList(),
      'fulfillments': instance.fulfillments?.map((e) => e.toJson()).toList(),
      'payments': instance.payments?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'exp': instance.exp?.toIso8601String(),
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as String?,
      parentCategoryId: json['parentCategoryId'] == null
          ? null
          : ParentCategoryId.fromJson(
              json['parentCategoryId'] as Map<String, dynamic>),
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentCategoryId': instance.parentCategoryId?.toJson(),
      'descriptor': instance.descriptor?.toJson(),
      'time': instance.time?.toJson(),
    };

_$_InstructionsClass _$$_InstructionsClassFromJson(Map<String, dynamic> json) =>
    _$_InstructionsClass(
      name: json['name'] as String?,
      code: json['code'] as String?,
      symbol: json['symbol'] as String?,
      shortDesc: json['shortDesc'] as String?,
      longDesc: json['longDesc'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      audio: json['audio'] as String?,
      the3DRender: json['the3DRender'] as String?,
    );

Map<String, dynamic> _$$_InstructionsClassToJson(
        _$_InstructionsClass instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'symbol': instance.symbol,
      'shortDesc': instance.shortDesc,
      'longDesc': instance.longDesc,
      'images': instance.images,
      'audio': instance.audio,
      'the3DRender': instance.the3DRender,
    };

_$_ParentCategoryId _$$_ParentCategoryIdFromJson(Map<String, dynamic> json) =>
    _$_ParentCategoryId();

Map<String, dynamic> _$$_ParentCategoryIdToJson(_$_ParentCategoryId instance) =>
    <String, dynamic>{};

_$_Time _$$_TimeFromJson(Map<String, dynamic> json) => _$_Time(
      label: json['label'] as String?,
      timestamp: json['timestamp'] as String?,
      duration: json['duration'] as String?,
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
      days: json['days'] as String?,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeToJson(_$_Time instance) => <String, dynamic>{
      'label': instance.label,
      'timestamp': instance.timestamp,
      'duration': instance.duration,
      'range': instance.range?.toJson(),
      'days': instance.days,
      'schedule': instance.schedule?.toJson(),
    };

_$_Range _$$_RangeFromJson(Map<String, dynamic> json) => _$_Range(
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$$_RangeToJson(_$_Range instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      frequency: json['frequency'] as String?,
      holidays: (json['holidays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      times:
          (json['times'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'frequency': instance.frequency,
      'holidays': instance.holidays,
      'times': instance.times,
    };

_$_Fulfillment _$$_FulfillmentFromJson(Map<String, dynamic> json) =>
    _$_Fulfillment(
      id: json['id'] as String?,
      type: json['type'] as String?,
      providerId: json['providerId'] as String?,
      state: json['state'] == null
          ? null
          : State.fromJson(json['state'] as Map<String, dynamic>),
      tracking: json['tracking'] as bool?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      agent: json['agent'] == null
          ? null
          : Agent.fromJson(json['agent'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : Agent.fromJson(json['person'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : End.fromJson(json['start'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : End.fromJson(json['end'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FulfillmentToJson(_$_Fulfillment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'providerId': instance.providerId,
      'state': instance.state?.toJson(),
      'tracking': instance.tracking,
      'customer': instance.customer?.toJson(),
      'contact': instance.contact?.toJson(),
      'agent': instance.agent?.toJson(),
      'person': instance.person?.toJson(),
      'start': instance.start?.toJson(),
      'end': instance.end?.toJson(),
      'tags': instance.tags?.toJson(),
    };

_$_Agent _$$_AgentFromJson(Map<String, dynamic> json) => _$_Agent(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      cred: json['cred'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AgentToJson(_$_Agent instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'dob': instance.dob,
      'gender': instance.gender,
      'cred': instance.cred,
      'phone': instance.phone,
      'email': instance.email,
      'tags': instance.tags?.toJson(),
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'tags': instance.tags?.toJson(),
    };

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'tags': instance.tags?.toJson(),
    };

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      cred: json['cred'] as String?,
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'dob': instance.dob,
      'gender': instance.gender,
      'cred': instance.cred,
    };

_$_End _$$_EndFromJson(Map<String, dynamic> json) => _$_End(
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      instructions: json['instructions'] == null
          ? null
          : InstructionsClass.fromJson(
              json['instructions'] as Map<String, dynamic>),
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      person: json['person'] == null
          ? null
          : Agent.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EndToJson(_$_End instance) => <String, dynamic>{
      'time': instance.time?.toJson(),
      'instructions': instance.instructions?.toJson(),
      'contact': instance.contact?.toJson(),
      'person': instance.person?.toJson(),
    };

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String?,
      updatedBy: json['updatedBy'] as String?,
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'descriptor': instance.descriptor?.toJson(),
      'updatedAt': instance.updatedAt,
      'updatedBy': instance.updatedBy,
    };

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      type: json['type'] as String?,
      status: json['status'] as String?,
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'time': instance.time?.toJson(),
    };

_$_Provider _$$_ProviderFromJson(Map<String, dynamic> json) => _$_Provider(
      id: json['id'] as String?,
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      categoryId: json['categoryId'] as String?,
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      exp: json['exp'] == null ? null : DateTime.parse(json['exp'] as String),
      tags: json['tags'] == null
          ? null
          : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProviderToJson(_$_Provider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descriptor': instance.descriptor?.toJson(),
      'categoryId': instance.categoryId,
      'time': instance.time?.toJson(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'fulfillments': instance.fulfillments?.map((e) => e.toJson()).toList(),
      'payments': instance.payments?.map((e) => e.toJson()).toList(),
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'location': instance.location?.toJson(),
      'exp': instance.exp?.toIso8601String(),
      'tags': instance.tags?.toJson(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String?,
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      categoryId: json['categoryId'] as String?,
      fulfillmentId: json['fulfillmentId'] as String?,
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      matched: json['matched'] as bool?,
      related: json['related'] as bool?,
      recommended: json['recommended'] as bool?,
      tags: json['tags'] == null
          ? null
          : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'descriptor': instance.descriptor?.toJson(),
      'price': instance.price?.toJson(),
      'categoryId': instance.categoryId,
      'fulfillmentId': instance.fulfillmentId,
      'time': instance.time?.toJson(),
      'matched': instance.matched,
      'related': instance.related,
      'recommended': instance.recommended,
      'tags': instance.tags?.toJson(),
    };

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      currency: json['currency'] as String?,
      value: json['value'] as String?,
      estimatedValue: json['estimatedValue'] as String?,
      computedValue: json['computedValue'] as String?,
      listedValue: json['listedValue'] as String?,
      offeredValue: json['offeredValue'] as String?,
      minimumValue: json['minimumValue'] as String?,
      maximumValue: json['maximumValue'] as String?,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'currency': instance.currency,
      'value': instance.value,
      'estimatedValue': instance.estimatedValue,
      'computedValue': instance.computedValue,
      'listedValue': instance.listedValue,
      'offeredValue': instance.offeredValue,
      'minimumValue': instance.minimumValue,
      'maximumValue': instance.maximumValue,
    };

_$_Tags _$$_TagsFromJson(Map<String, dynamic> json) => _$_Tags(
      tag1: json['tag1'] as String?,
      tag2: json['tag2'] as String?,
    );

Map<String, dynamic> _$$_TagsToJson(_$_Tags instance) => <String, dynamic>{
      'tag1': instance.tag1,
      'tag2': instance.tag2,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      id: json['id'] as String?,
      descriptor: json['descriptor'] == null
          ? null
          : LocationDescriptor.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : City.fromJson(json['country'] as Map<String, dynamic>),
      gps: json['gps'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descriptor': instance.descriptor?.toJson(),
      'city': instance.city?.toJson(),
      'country': instance.country?.toJson(),
      'gps': instance.gps,
      'address': instance.address,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$_LocationDescriptor _$$_LocationDescriptorFromJson(
        Map<String, dynamic> json) =>
    _$_LocationDescriptor(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_LocationDescriptorToJson(
        _$_LocationDescriptor instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
