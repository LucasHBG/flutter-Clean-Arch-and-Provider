import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation_model.freezed.dart';
part 'geolocation_model.g.dart';

@freezed
class Geolocation with _$Geolocation {
  const factory Geolocation({
    String? lat,
    String? lng,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, Object?> json) =>
      _$GeolocationFromJson(json);
}
