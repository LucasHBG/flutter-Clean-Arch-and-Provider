// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_list_model.freezed.dart';
part 'users_list_model.g.dart';

@freezed
class UsersListModel with _$UsersListModel {
  const factory UsersListModel({
    required List<UserModel>? users,
  }) = _UsersListModel;

  factory UsersListModel.fromJson(Map<String, dynamic> json) =>
      _$UsersListModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required final int id,
    required String name,
    required String username,
    required String email,
    AddressModel? address,
    required String phone,
    String? website,
    CompanyModel? company,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    GeolocationModel? geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, Object?> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    String? name,
    String? catchPhrase,
    String? bs,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, Object?> json) =>
      _$CompanyModelFromJson(json);
}

@freezed
class GeolocationModel with _$GeolocationModel {
  const factory GeolocationModel({
    String? lat,
    String? lng,
  }) = _GeolocationModel;

  factory GeolocationModel.fromJson(Map<String, Object?> json) =>
      _$GeolocationModelFromJson(json);
}
