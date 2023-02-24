import 'package:dio_wanandroid/generated/json/base/json_field.dart';
import 'package:dio_wanandroid/generated/json/banner_home_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class BannerHomeEntity {

	late String desc;
	late double id;
	late String imagePath;
	late double isVisible;
	late double order;
	late String title;
	late double type;
	late String url;
  
  BannerHomeEntity();

  factory BannerHomeEntity.fromJson(Map<String, dynamic> json) => $BannerHomeEntityFromJson(json);

  Map<String, dynamic> toJson() => $BannerHomeEntityToJson(this);

  BannerHomeEntity copyWith({String? desc, double? id, String? imagePath, double? isVisible, double? order, String? title, double? type, String? url}) {
      return BannerHomeEntity()..desc= desc ?? this.desc
			..id= id ?? this.id
			..imagePath= imagePath ?? this.imagePath
			..isVisible= isVisible ?? this.isVisible
			..order= order ?? this.order
			..title= title ?? this.title
			..type= type ?? this.type
			..url= url ?? this.url;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}