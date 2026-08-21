import 'package:freezed_annotation/freezed_annotation.dart';

part 'plumbing_service_options_dto.freezed.dart';
part 'plumbing_service_options_dto.g.dart';

@freezed
abstract class PlumbingServiceOptionsDto with _$PlumbingServiceOptionsDto {
  const factory PlumbingServiceOptionsDto({
    @Default('') String slug,
    @Default(<PlumbingServiceOptionDto>[])
    List<PlumbingServiceOptionDto> serviceOptions,
  }) = _PlumbingServiceOptionsDto;

  factory PlumbingServiceOptionsDto.fromJson(Map<String, dynamic> json) =>
      _$PlumbingServiceOptionsDtoFromJson(json);
}

@freezed
abstract class PlumbingServiceOptionDto with _$PlumbingServiceOptionDto {
  const factory PlumbingServiceOptionDto({
    @Default('') String id,
    @Default('') String title,
    String? icon,
  }) = _PlumbingServiceOptionDto;

  factory PlumbingServiceOptionDto.fromJson(Map<String, dynamic> json) =>
      _$PlumbingServiceOptionDtoFromJson(json);
}
