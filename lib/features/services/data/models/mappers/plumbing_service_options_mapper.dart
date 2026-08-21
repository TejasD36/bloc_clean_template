import '../../../domain/entities/plumbing_service_option_entity.dart';
import '../dtos/plumbing_service_options_dto.dart';

extension PlumbingServiceOptionsMapper on PlumbingServiceOptionsDto {
  PlumbingServiceOptionsEntity toEntity() => PlumbingServiceOptionsEntity(
    options: serviceOptions.map((option) => option.toEntity()).toList(),
  );
}

extension PlumbingServiceOptionMapper on PlumbingServiceOptionDto {
  PlumbingServiceOptionEntity toEntity() =>
      PlumbingServiceOptionEntity(id: id, title: title, icon: icon);
}
