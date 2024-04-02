// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uhi_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UhiSearchModelImpl _$$UhiSearchModelImplFromJson(Map<String, dynamic> json) =>
    _$UhiSearchModelImpl(
      context: json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UhiSearchModelImplToJson(
        _$UhiSearchModelImpl instance) =>
    <String, dynamic>{
      'context': instance.context?.toJson(),
      'message': instance.message?.toJson(),
    };

_$ContextImpl _$$ContextImplFromJson(Map<String, dynamic> json) =>
    _$ContextImpl(
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

Map<String, dynamic> _$$ContextImplToJson(_$ContextImpl instance) =>
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

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      intent: json['intent'] == null
          ? null
          : Intent.fromJson(json['intent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'intent': instance.intent?.toJson(),
    };

_$IntentImpl _$$IntentImplFromJson(Map<String, dynamic> json) => _$IntentImpl(
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      provider: json['provider'] == null
          ? null
          : Provider.fromJson(json['provider'] as Map<String, dynamic>),
      fulfillment: json['fulfillment'] == null
          ? null
          : Fulfillment.fromJson(json['fulfillment'] as Map<String, dynamic>),
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      item: json['item'] == null
          ? null
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IntentImplToJson(_$IntentImpl instance) =>
    <String, dynamic>{
      'descriptor': instance.descriptor?.toJson(),
      'provider': instance.provider?.toJson(),
      'fulfillment': instance.fulfillment?.toJson(),
      'payment': instance.payment?.toJson(),
      'category': instance.category?.toJson(),
      'item': instance.item?.toJson(),
      'tags': instance.tags?.toJson(),
    };

_$InstructionsClassImpl _$$InstructionsClassImplFromJson(
        Map<String, dynamic> json) =>
    _$InstructionsClassImpl(
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

Map<String, dynamic> _$$InstructionsClassImplToJson(
        _$InstructionsClassImpl instance) =>
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

_$ProviderImpl _$$ProviderImplFromJson(Map<String, dynamic> json) =>
    _$ProviderImpl(
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

Map<String, dynamic> _$$ProviderImplToJson(_$ProviderImpl instance) =>
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

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
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

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentCategoryId': instance.parentCategoryId?.toJson(),
      'descriptor': instance.descriptor?.toJson(),
      'time': instance.time?.toJson(),
    };

_$ParentCategoryIdImpl _$$ParentCategoryIdImplFromJson(
        Map<String, dynamic> json) =>
    _$ParentCategoryIdImpl();

Map<String, dynamic> _$$ParentCategoryIdImplToJson(
        _$ParentCategoryIdImpl instance) =>
    <String, dynamic>{};

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
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

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'timestamp': instance.timestamp,
      'duration': instance.duration,
      'range': instance.range?.toJson(),
      'days': instance.days,
      'schedule': instance.schedule?.toJson(),
    };

_$RangeImpl _$$RangeImplFromJson(Map<String, dynamic> json) => _$RangeImpl(
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$$RangeImplToJson(_$RangeImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      frequency: json['frequency'] as String?,
      holidays: (json['holidays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      times:
          (json['times'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'frequency': instance.frequency,
      'holidays': instance.holidays,
      'times': instance.times,
    };

_$FulfillmentImpl _$$FulfillmentImplFromJson(Map<String, dynamic> json) =>
    _$FulfillmentImpl(
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

Map<String, dynamic> _$$FulfillmentImplToJson(_$FulfillmentImpl instance) =>
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

_$AgentImpl _$$AgentImplFromJson(Map<String, dynamic> json) => _$AgentImpl(
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

Map<String, dynamic> _$$AgentImplToJson(_$AgentImpl instance) =>
    <String, dynamic>{
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

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'tags': instance.tags?.toJson(),
    };

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      person: json['person'] == null
          ? null
          : Person.fromJson(json['person'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : ParentCategoryId.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'person': instance.person?.toJson(),
      'tags': instance.tags?.toJson(),
    };

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      cred: json['cred'] as String?,
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'dob': instance.dob,
      'gender': instance.gender,
      'cred': instance.cred,
    };

_$EndImpl _$$EndImplFromJson(Map<String, dynamic> json) => _$EndImpl(
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

Map<String, dynamic> _$$EndImplToJson(_$EndImpl instance) => <String, dynamic>{
      'time': instance.time?.toJson(),
      'instructions': instance.instructions?.toJson(),
      'contact': instance.contact?.toJson(),
      'person': instance.person?.toJson(),
    };

_$StateImpl _$$StateImplFromJson(Map<String, dynamic> json) => _$StateImpl(
      descriptor: json['descriptor'] == null
          ? null
          : InstructionsClass.fromJson(
              json['descriptor'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String?,
      updatedBy: json['updatedBy'] as String?,
    );

Map<String, dynamic> _$$StateImplToJson(_$StateImpl instance) =>
    <String, dynamic>{
      'descriptor': instance.descriptor?.toJson(),
      'updatedAt': instance.updatedAt,
      'updatedBy': instance.updatedBy,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
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

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
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

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      currency: json['currency'] as String?,
      value: json['value'] as String?,
      estimatedValue: json['estimatedValue'] as String?,
      computedValue: json['computedValue'] as String?,
      listedValue: json['listedValue'] as String?,
      offeredValue: json['offeredValue'] as String?,
      minimumValue: json['minimumValue'] as String?,
      maximumValue: json['maximumValue'] as String?,
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'value': instance.value,
      'estimatedValue': instance.estimatedValue,
      'computedValue': instance.computedValue,
      'listedValue': instance.listedValue,
      'offeredValue': instance.offeredValue,
      'minimumValue': instance.minimumValue,
      'maximumValue': instance.maximumValue,
    };

_$TagsImpl _$$TagsImplFromJson(Map<String, dynamic> json) => _$TagsImpl(
      tag1: json['tag1'] as String?,
      tag2: json['tag2'] as String?,
    );

Map<String, dynamic> _$$TagsImplToJson(_$TagsImpl instance) =>
    <String, dynamic>{
      'tag1': instance.tag1,
      'tag2': instance.tag2,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
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

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descriptor': instance.descriptor?.toJson(),
      'city': instance.city?.toJson(),
      'country': instance.country?.toJson(),
      'gps': instance.gps,
      'address': instance.address,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

_$LocationDescriptorImpl _$$LocationDescriptorImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDescriptorImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$LocationDescriptorImplToJson(
        _$LocationDescriptorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      type: json['type'] as String?,
      status: json['status'] as String?,
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'time': instance.time?.toJson(),
    };
