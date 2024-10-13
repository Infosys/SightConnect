/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';
part 'eua_on_search_model.freezed.dart';
part 'eua_on_search_model.g.dart';

@freezed
class EuaOnSearchModel with _$EuaOnSearchModel {
    const factory EuaOnSearchModel({
        Context? context,
        Message? message,
        Error? error,
    }) = _EuaOnSearchModel;

    factory EuaOnSearchModel.fromJson(Map<String, dynamic> json) => _$EuaOnSearchModelFromJson(json);
}

@freezed
class Context with _$Context {
    const factory Context({
        String? domain,
        String? country,
        String? city,
        String? action,
        String? coreVersion,
        String? consumerId,
        String? consumerUri,
        String? providerId,
        String? providerUri,
        String? transactionId,
        String? messageId,
        String? timestamp,
        String? key,
        String? ttl,
    }) = _Context;

    factory Context.fromJson(Map<String, dynamic> json) => _$ContextFromJson(json);
}

@freezed
class Error with _$Error {
    const factory Error({
        String? type,
        String? code,
        String? path,
        String? message,
    }) = _Error;

    factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class Message with _$Message {
    const factory Message({
        Catalog? catalog,
    }) = _Message;

    factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class Catalog with _$Catalog {
    const factory Catalog({
        InstructionsClass? descriptor,
        List<Provider>? providers,
        List<Fulfillment>? fulfillments,
        List<Payment>? payments,
        List<Category>? categories,
        DateTime? exp,
    }) = _Catalog;

    factory Catalog.fromJson(Map<String, dynamic> json) => _$CatalogFromJson(json);
}

@freezed
class Category with _$Category {
    const factory Category({
        String? id,
        ParentCategoryId? parentCategoryId,
        InstructionsClass? descriptor,
        Time? time,
    }) = _Category;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class InstructionsClass with _$InstructionsClass {
    const factory InstructionsClass({
        String? name,
        String? code,
        String? symbol,
        String? shortDesc,
        String? longDesc,
        List<String>? images,
        String? audio,
        String? the3DRender,
    }) = _InstructionsClass;

    factory InstructionsClass.fromJson(Map<String, dynamic> json) => _$InstructionsClassFromJson(json);
}

@freezed
class ParentCategoryId with _$ParentCategoryId {
    const factory ParentCategoryId() = _ParentCategoryId;

    factory ParentCategoryId.fromJson(Map<String, dynamic> json) => _$ParentCategoryIdFromJson(json);
}

@freezed
class Time with _$Time {
    const factory Time({
        String? label,
        String? timestamp,
        String? duration,
        Range? range,
        String? days,
        Schedule? schedule,
    }) = _Time;

    factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Range with _$Range {
    const factory Range({
        String? start,
        String? end,
    }) = _Range;

    factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
}

@freezed
class Schedule with _$Schedule {
    const factory Schedule({
        String? frequency,
        List<String>? holidays,
        List<String>? times,
    }) = _Schedule;

    factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}

@freezed
class Fulfillment with _$Fulfillment {
    const factory Fulfillment({
        String? id,
        String? type,
        String? providerId,
        State? state,
        bool? tracking,
        Customer? customer,
        Contact? contact,
        Agent? agent,
        Agent? person,
        End? start,
        End? end,
        ParentCategoryId? tags,
    }) = _Fulfillment;

    factory Fulfillment.fromJson(Map<String, dynamic> json) => _$FulfillmentFromJson(json);
}

@freezed
class Agent with _$Agent {
    const factory Agent({
        String? id,
        String? name,
        String? image,
        String? dob,
        String? gender,
        String? cred,
        String? phone,
        String? email,
        ParentCategoryId? tags,
    }) = _Agent;

    factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
}

@freezed
class Contact with _$Contact {
    const factory Contact({
        String? phone,
        String? email,
        ParentCategoryId? tags,
    }) = _Contact;

    factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}

@freezed
class Customer with _$Customer {
    const factory Customer({
        Person? person,
        ParentCategoryId? tags,
    }) = _Customer;

    factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
class Person with _$Person {
    const factory Person({
        String? id,
        String? name,
        String? image,
        String? dob,
        String? gender,
        String? cred,
    }) = _Person;

    factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
class End with _$End {
    const factory End({
        Time? time,
        InstructionsClass? instructions,
        Contact? contact,
        Agent? person,
    }) = _End;

    factory End.fromJson(Map<String, dynamic> json) => _$EndFromJson(json);
}

@freezed
class State with _$State {
    const factory State({
        InstructionsClass? descriptor,
        String? updatedAt,
        String? updatedBy,
    }) = _State;

    factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}

@freezed
class Payment with _$Payment {
    const factory Payment({
        String? type,
        String? status,
        Time? time,
    }) = _Payment;

    factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}

@freezed
class Provider with _$Provider {
    const factory Provider({
        String? id,
        InstructionsClass? descriptor,
        String? categoryId,
        Time? time,
        List<Category>? categories,
        List<Fulfillment>? fulfillments,
        List<Payment>? payments,
        List<Item>? items,
        Location? location,
        DateTime? exp,
        Tags? tags,
    }) = _Provider;

    factory Provider.fromJson(Map<String, dynamic> json) => _$ProviderFromJson(json);
}

@freezed
class Item with _$Item {
    const factory Item({
        String? id,
        InstructionsClass? descriptor,
        Price? price,
        String? categoryId,
        String? fulfillmentId,
        Time? time,
        bool? matched,
        bool? related,
        bool? recommended,
        Tags? tags,
    }) = _Item;

    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Price with _$Price {
    const factory Price({
        String? currency,
        String? value,
        String? estimatedValue,
        String? computedValue,
        String? listedValue,
        String? offeredValue,
        String? minimumValue,
        String? maximumValue,
    }) = _Price;

    factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
class Tags with _$Tags {
    const factory Tags({
        String? tag1,
        String? tag2,
    }) = _Tags;

    factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
}

@freezed
class Location with _$Location {
    const factory Location({
        String? id,
        LocationDescriptor? descriptor,
        City? city,
        City? country,
        String? gps,
        String? address,
    }) = _Location;

    factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@freezed
class City with _$City {
    const factory City({
        String? name,
        String? code,
    }) = _City;

    factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class LocationDescriptor with _$LocationDescriptor {
    const factory LocationDescriptor({
        String? name,
    }) = _LocationDescriptor;

    factory LocationDescriptor.fromJson(Map<String, dynamic> json) => _$LocationDescriptorFromJson(json);
}
