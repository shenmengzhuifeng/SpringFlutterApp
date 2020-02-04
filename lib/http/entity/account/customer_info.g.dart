// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerInfoReply _$CustomerInfoReplyFromJson(Map<String, dynamic> json) {
  return CustomerInfoReply(
    json['resultCode'],
    json['errorCode'],
    json['errorMsg'],
    json['response'] == null
        ? null
        : CustomerInfo.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomerInfoReplyToJson(CustomerInfoReply instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'response': instance.response,
    };

CustomerInfo _$CustomerInfoFromJson(Map<String, dynamic> json) {
  return CustomerInfo(
    json['token'] as String,
    json['refreshToken'] as String,
    json['tokenExpireTime'] as int,
    json['refreshTokenExpireTime'] as int,
  );
}

Map<String, dynamic> _$CustomerInfoToJson(CustomerInfo instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'tokenExpireTime': instance.tokenExpireTime,
      'refreshTokenExpireTime': instance.refreshTokenExpireTime,
    };
