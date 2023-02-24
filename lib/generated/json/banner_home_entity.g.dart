import 'package:dio_wanandroid/generated/json/base/json_convert_content.dart';
import 'package:dio_wanandroid/model/banner_home_entity.dart';

BannerHomeEntity $BannerHomeEntityFromJson(Map<String, dynamic> json) {
	final BannerHomeEntity bannerHomeEntity = BannerHomeEntity();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		bannerHomeEntity.desc = desc;
	}
	final double? id = jsonConvert.convert<double>(json['id']);
	if (id != null) {
		bannerHomeEntity.id = id;
	}
	final String? imagePath = jsonConvert.convert<String>(json['imagePath']);
	if (imagePath != null) {
		bannerHomeEntity.imagePath = imagePath;
	}
	final double? isVisible = jsonConvert.convert<double>(json['isVisible']);
	if (isVisible != null) {
		bannerHomeEntity.isVisible = isVisible;
	}
	final double? order = jsonConvert.convert<double>(json['order']);
	if (order != null) {
		bannerHomeEntity.order = order;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		bannerHomeEntity.title = title;
	}
	final double? type = jsonConvert.convert<double>(json['type']);
	if (type != null) {
		bannerHomeEntity.type = type;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		bannerHomeEntity.url = url;
	}
	return bannerHomeEntity;
}

Map<String, dynamic> $BannerHomeEntityToJson(BannerHomeEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['id'] = entity.id;
	data['imagePath'] = entity.imagePath;
	data['isVisible'] = entity.isVisible;
	data['order'] = entity.order;
	data['title'] = entity.title;
	data['type'] = entity.type;
	data['url'] = entity.url;
	return data;
}