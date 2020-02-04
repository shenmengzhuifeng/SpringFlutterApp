import 'package:flutter_app/http/entity/base/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_info.g.dart';

@JsonSerializable()
class CustomerInfoReply extends BaseResponse {

  @JsonKey(name: 'response')
  CustomerInfo response;

  factory CustomerInfoReply.fromJson(Map<String, dynamic> srcJson) =>
      _$CustomerInfoReplyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CustomerInfoReplyToJson(this);

  CustomerInfoReply(resultCode, errorCode, errorMsg, this.response)
      : super(resultCode, errorCode, errorMsg);

  @override
  String toString() {
    return 'CustomerInfoReply{response: $response}';
  }
}

@JsonSerializable()
class CustomerInfo {
  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'refreshToken')
  String refreshToken;

  @JsonKey(name: 'tokenExpireTime')
  int tokenExpireTime;

  @JsonKey(name: 'refreshTokenExpireTime')
  int refreshTokenExpireTime;

  CustomerInfo(this.token, this.refreshToken, this.tokenExpireTime,
      this.refreshTokenExpireTime);

  factory CustomerInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$CustomerInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CustomerInfoToJson(this);

  @override
  String toString() {
    return 'CustomerInfo{token: $token, refreshToken: $refreshToken, tokenExpireTime: $tokenExpireTime, refreshTokenExpireTime: $refreshTokenExpireTime}';
  }
}
