import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse extends Object {
  @JsonKey(name: 'resultCode')
  int resultCode;

  @JsonKey(name: 'errorCode')
  String errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  BaseResponse(
    this.resultCode,
    this.errorCode,
    this.errorMsg,
  );

  factory BaseResponse.fromJson(Map<String, dynamic> srcJson) =>
      _$BaseResponseFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
