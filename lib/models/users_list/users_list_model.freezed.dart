// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersListModel _$UsersListModelFromJson(Map<String, dynamic> json) {
  return _UsersListModel.fromJson(json);
}

/// @nodoc
mixin _$UsersListModel {
  List<UserModel>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersListModelCopyWith<UsersListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListModelCopyWith<$Res> {
  factory $UsersListModelCopyWith(
          UsersListModel value, $Res Function(UsersListModel) then) =
      _$UsersListModelCopyWithImpl<$Res>;
  $Res call({List<UserModel>? users});
}

/// @nodoc
class _$UsersListModelCopyWithImpl<$Res>
    implements $UsersListModelCopyWith<$Res> {
  _$UsersListModelCopyWithImpl(this._value, this._then);

  final UsersListModel _value;
  // ignore: unused_field
  final $Res Function(UsersListModel) _then;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UsersListModelCopyWith<$Res>
    implements $UsersListModelCopyWith<$Res> {
  factory _$$_UsersListModelCopyWith(
          _$_UsersListModel value, $Res Function(_$_UsersListModel) then) =
      __$$_UsersListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<UserModel>? users});
}

/// @nodoc
class __$$_UsersListModelCopyWithImpl<$Res>
    extends _$UsersListModelCopyWithImpl<$Res>
    implements _$$_UsersListModelCopyWith<$Res> {
  __$$_UsersListModelCopyWithImpl(
      _$_UsersListModel _value, $Res Function(_$_UsersListModel) _then)
      : super(_value, (v) => _then(v as _$_UsersListModel));

  @override
  _$_UsersListModel get _value => super._value as _$_UsersListModel;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$_UsersListModel(
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersListModel implements _UsersListModel {
  const _$_UsersListModel({required final List<UserModel>? users})
      : _users = users;

  factory _$_UsersListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsersListModelFromJson(json);

  final List<UserModel>? _users;
  @override
  List<UserModel>? get users {
    final value = _users;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsersListModel(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersListModel &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$_UsersListModelCopyWith<_$_UsersListModel> get copyWith =>
      __$$_UsersListModelCopyWithImpl<_$_UsersListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersListModelToJson(
      this,
    );
  }
}

abstract class _UsersListModel implements UsersListModel {
  const factory _UsersListModel({required final List<UserModel>? users}) =
      _$_UsersListModel;

  factory _UsersListModel.fromJson(Map<String, dynamic> json) =
      _$_UsersListModel.fromJson;

  @override
  List<UserModel>? get users;
  @override
  @JsonKey(ignore: true)
  _$$_UsersListModelCopyWith<_$_UsersListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AddressModel? get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  CompanyModel? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      AddressModel? address,
      String phone,
      String? website,
      CompanyModel? company});

  $AddressModelCopyWith<$Res>? get address;
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ));
  }

  @override
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $CompanyModelCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyModelCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      AddressModel? address,
      String phone,
      String? website,
      CompanyModel? company});

  @override
  $AddressModelCopyWith<$Res>? get address;
  @override
  $CompanyModelCopyWith<$Res>? get company;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, (v) => _then(v as _$_UserModel));

  @override
  _$_UserModel get _value => super._value as _$_UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? company = freezed,
  }) {
    return _then(_$_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      this.address,
      required this.phone,
      this.website,
      this.company});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final AddressModel? address;
  @override
  final String phone;
  @override
  final String? website;
  @override
  final CompanyModel? company;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final int id,
      required final String name,
      required final String username,
      required final String email,
      final AddressModel? address,
      required final String phone,
      final String? website,
      final CompanyModel? company}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  AddressModel? get address;
  @override
  String get phone;
  @override
  String? get website;
  @override
  CompanyModel? get company;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String? get street => throw _privateConstructorUsedError;
  String? get suite => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  GeolocationModel? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res>;
  $Res call(
      {String? street,
      String? suite,
      String? city,
      String? zipcode,
      GeolocationModel? geo});

  $GeolocationModelCopyWith<$Res>? get geo;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res> implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  final AddressModel _value;
  // ignore: unused_field
  final $Res Function(AddressModel) _then;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeolocationModel?,
    ));
  }

  @override
  $GeolocationModelCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $GeolocationModelCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? street,
      String? suite,
      String? city,
      String? zipcode,
      GeolocationModel? geo});

  @override
  $GeolocationModelCopyWith<$Res>? get geo;
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
      : super(_value, (v) => _then(v as _$_AddressModel));

  @override
  _$_AddressModel get _value => super._value as _$_AddressModel;

  @override
  $Res call({
    Object? street = freezed,
    Object? suite = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? geo = freezed,
  }) {
    return _then(_$_AddressModel(
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      suite: suite == freezed
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: zipcode == freezed
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      geo: geo == freezed
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeolocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel implements _AddressModel {
  const _$_AddressModel(
      {this.street, this.suite, this.city, this.zipcode, this.geo});

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final String? street;
  @override
  final String? suite;
  @override
  final String? city;
  @override
  final String? zipcode;
  @override
  final GeolocationModel? geo;

  @override
  String toString() {
    return 'AddressModel(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.suite, suite) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.zipcode, zipcode) &&
            const DeepCollectionEquality().equals(other.geo, geo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(suite),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(zipcode),
      const DeepCollectionEquality().hash(geo));

  @JsonKey(ignore: true)
  @override
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {final String? street,
      final String? suite,
      final String? city,
      final String? zipcode,
      final GeolocationModel? geo}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  String? get street;
  @override
  String? get suite;
  @override
  String? get city;
  @override
  String? get zipcode;
  @override
  GeolocationModel? get geo;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  String? get name => throw _privateConstructorUsedError;
  String? get catchPhrase => throw _privateConstructorUsedError;
  String? get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res>;
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res> implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  final CompanyModel _value;
  // ignore: unused_field
  final $Res Function(CompanyModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyModelCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$_CompanyModelCopyWith(
          _$_CompanyModel value, $Res Function(_$_CompanyModel) then) =
      __$$_CompanyModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? catchPhrase, String? bs});
}

/// @nodoc
class __$$_CompanyModelCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res>
    implements _$$_CompanyModelCopyWith<$Res> {
  __$$_CompanyModelCopyWithImpl(
      _$_CompanyModel _value, $Res Function(_$_CompanyModel) _then)
      : super(_value, (v) => _then(v as _$_CompanyModel));

  @override
  _$_CompanyModel get _value => super._value as _$_CompanyModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhrase = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_CompanyModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      catchPhrase: catchPhrase == freezed
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyModel implements _CompanyModel {
  const _$_CompanyModel({this.name, this.catchPhrase, this.bs});

  factory _$_CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyModelFromJson(json);

  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;

  @override
  String toString() {
    return 'CompanyModel(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.catchPhrase, catchPhrase) &&
            const DeepCollectionEquality().equals(other.bs, bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(catchPhrase),
      const DeepCollectionEquality().hash(bs));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyModelCopyWith<_$_CompanyModel> get copyWith =>
      __$$_CompanyModelCopyWithImpl<_$_CompanyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyModelToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  const factory _CompanyModel(
      {final String? name,
      final String? catchPhrase,
      final String? bs}) = _$_CompanyModel;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyModel.fromJson;

  @override
  String? get name;
  @override
  String? get catchPhrase;
  @override
  String? get bs;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyModelCopyWith<_$_CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeolocationModel _$GeolocationModelFromJson(Map<String, dynamic> json) {
  return _GeolocationModel.fromJson(json);
}

/// @nodoc
mixin _$GeolocationModel {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeolocationModelCopyWith<GeolocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationModelCopyWith<$Res> {
  factory $GeolocationModelCopyWith(
          GeolocationModel value, $Res Function(GeolocationModel) then) =
      _$GeolocationModelCopyWithImpl<$Res>;
  $Res call({String? lat, String? lng});
}

/// @nodoc
class _$GeolocationModelCopyWithImpl<$Res>
    implements $GeolocationModelCopyWith<$Res> {
  _$GeolocationModelCopyWithImpl(this._value, this._then);

  final GeolocationModel _value;
  // ignore: unused_field
  final $Res Function(GeolocationModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GeolocationModelCopyWith<$Res>
    implements $GeolocationModelCopyWith<$Res> {
  factory _$$_GeolocationModelCopyWith(
          _$_GeolocationModel value, $Res Function(_$_GeolocationModel) then) =
      __$$_GeolocationModelCopyWithImpl<$Res>;
  @override
  $Res call({String? lat, String? lng});
}

/// @nodoc
class __$$_GeolocationModelCopyWithImpl<$Res>
    extends _$GeolocationModelCopyWithImpl<$Res>
    implements _$$_GeolocationModelCopyWith<$Res> {
  __$$_GeolocationModelCopyWithImpl(
      _$_GeolocationModel _value, $Res Function(_$_GeolocationModel) _then)
      : super(_value, (v) => _then(v as _$_GeolocationModel));

  @override
  _$_GeolocationModel get _value => super._value as _$_GeolocationModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_GeolocationModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeolocationModel implements _GeolocationModel {
  const _$_GeolocationModel({this.lat, this.lng});

  factory _$_GeolocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeolocationModelFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'GeolocationModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeolocationModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_GeolocationModelCopyWith<_$_GeolocationModel> get copyWith =>
      __$$_GeolocationModelCopyWithImpl<_$_GeolocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeolocationModelToJson(
      this,
    );
  }
}

abstract class _GeolocationModel implements GeolocationModel {
  const factory _GeolocationModel({final String? lat, final String? lng}) =
      _$_GeolocationModel;

  factory _GeolocationModel.fromJson(Map<String, dynamic> json) =
      _$_GeolocationModel.fromJson;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_GeolocationModelCopyWith<_$_GeolocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
