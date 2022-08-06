// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_main_model.freezed.dart';
part 'users_main_model.g.dart';

UsersMainModel usersMainFromJson(String str) =>
    UsersMainModel.fromJson(json.decode(str));

String usersMainToJson(UsersMainModel data) => json.encode(data.toJson());

@freezed
class UsersMainModel with _$UsersMainModel {
  const factory UsersMainModel({
    List<UserModel>? users,
  }) = _UsersMainListModel;

  factory UsersMainModel.fromJson(Map<String, dynamic> json) =>
      _$UsersMainModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required final int id,
    required String name,
    required String username,
    required String email,
    Address? address,
    required String phone,
    String? website,
    Company? company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geolocation? geolocation,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}

@freezed
class Geolocation with _$Geolocation {
  const factory Geolocation({
    String? lat,
    String? lng,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, Object?> json) =>
      _$GeolocationFromJson(json);
}
