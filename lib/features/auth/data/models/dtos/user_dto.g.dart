// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDtoAdapter extends TypeAdapter<UserDto> {
  @override
  final typeId = 0;

  @override
  UserDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDto(
      id: fields[0] as String,
      name: fields[1] as String?,
      email: fields[2] as String?,
      photoUrl: fields[3] as String?,
      isEmailVerified: fields[4] == null ? false : fields[4] as bool,
      phoneNumber: fields[5] == null ? '' : fields[5] as String,
      isAnonymous: fields[8] == null ? false : fields[8] as bool,
      status: fields[12] == null ? true : fields[12] as bool,
      role: (fields[13] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, UserDto obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.photoUrl)
      ..writeByte(4)
      ..write(obj.isEmailVerified)
      ..writeByte(5)
      ..write(obj.phoneNumber)
      ..writeByte(8)
      ..write(obj.isAnonymous)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: _stringFromJson(json['id']),
  name: json['name'] as String?,
  email: json['email'] as String?,
  photoUrl: json['photoUrl'] as String?,
  isEmailVerified: json['isEmailVerified'] == null
      ? false
      : _boolFromJson(json['isEmailVerified']),
  phoneNumber: json['phoneNumber'] as String? ?? '',
  isAnonymous: json['isAnonymous'] == null
      ? false
      : _boolFromJson(json['isAnonymous']),
  status: json['status'] == null ? true : _boolFromJson(json['status']),
  role: _nullableIntFromJson(json['role']),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'photoUrl': instance.photoUrl,
  'isEmailVerified': instance.isEmailVerified,
  'phoneNumber': instance.phoneNumber,
  'isAnonymous': instance.isAnonymous,
  'status': instance.status,
  'role': instance.role,
};
