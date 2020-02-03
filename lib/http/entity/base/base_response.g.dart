// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
    json['resultCode'] as int,
    json['errorCode'] as String,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };
