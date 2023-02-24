import 'dart:convert';
import 'package:dio_wanandroid/generated/json/base/json_convert_content.dart';

class BaseResponseEntity<T> {

	late T data;
	late int errorCode;
	late String errorMsg;
  
  BaseResponseEntity();

  factory BaseResponseEntity.fromJson(Map<String, dynamic> json) => $BaseResponseEntityFromJson<T>(json);

  Map<String, dynamic> toJson() => $BaseResponseEntityToJson(this);

  BaseResponseEntity copyWith({T? data, int? errorCode, String? errorMsg}) {
      return BaseResponseEntity()..data= data ?? this.data
			..errorCode= errorCode ?? this.errorCode
			..errorMsg= errorMsg ?? this.errorMsg;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

BaseResponseEntity<T> $BaseResponseEntityFromJson<T>(Map<String, dynamic> json) {
  final BaseResponseEntity<T> baseResponseEntity = BaseResponseEntity<T>();
  final T? data = JsonConvert.fromJsonAsT<T>(json['data']);
  if (data != null) {
    baseResponseEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    baseResponseEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    baseResponseEntity.errorMsg = errorMsg;
  }
  return baseResponseEntity;
}

Map<String, dynamic> $BaseResponseEntityToJson(BaseResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data;
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}