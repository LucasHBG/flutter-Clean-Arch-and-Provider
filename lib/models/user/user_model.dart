// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address_model.dart';
import '../company/company_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

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
