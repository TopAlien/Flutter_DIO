import 'package:dio_wanandroid/generated/json/base/json_field.dart';
import 'package:dio_wanandroid/generated/json/article_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArticleListEntity {
	/// 当前页
	late int curPage;

	/// 文章列表
	late List<ArticleListDatas> datas;

	late int offset;
	late bool over;
	late int pageCount;
	late int size;

	/// 总页数
	late int total;
  
  ArticleListEntity();

  factory ArticleListEntity.fromJson(Map<String, dynamic> json) => $ArticleListEntityFromJson(json);

  Map<String, dynamic> toJson() => $ArticleListEntityToJson(this);

  ArticleListEntity copyWith({int? curPage, List<ArticleListDatas>? datas, int? offset, bool? over, int? pageCount, int? size, int? total}) {
      return ArticleListEntity()..curPage= curPage ?? this.curPage
			..datas= datas ?? this.datas
			..offset= offset ?? this.offset
			..over= over ?? this.over
			..pageCount= pageCount ?? this.pageCount
			..size= size ?? this.size
			..total= total ?? this.total;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArticleListDatas {

	late bool adminAdd;
	late String apkLink;
	late int audit;
	late String author;
	late bool canEdit;
	late int chapterId;
	late String chapterName;
	late bool collect;
	late int courseId;
	late String desc;
	late String descMd;
	late String envelopePic;
	late bool fresh;
	late String host;
	late int id;
	late bool isAdminAdd;

	/// 文章跳转链接
	late String link;
	late String niceDate;
	late String niceShareDate;
	late String origin;
	late String prefix;
	late String projectLink;
	late int publishTime;
	late int realSuperChapterId;
	late bool route;
	late int selfVisible;
	late int shareDate;

	/// 分享人
	late String shareUser;
	late int superChapterId;
	late String superChapterName;
	late List<ArticleListDatasTags> tags;

	/// 标题
	late String title;
	late int type;
	late int userId;
	late int visible;
	late int zan;
  
  ArticleListDatas();

  factory ArticleListDatas.fromJson(Map<String, dynamic> json) => $ArticleListDatasFromJson(json);

  Map<String, dynamic> toJson() => $ArticleListDatasToJson(this);

  ArticleListDatas copyWith({bool? adminAdd, String? apkLink, int? audit, String? author, bool? canEdit, int? chapterId, String? chapterName, bool? collect, int? courseId, String? desc, String? descMd, String? envelopePic, bool? fresh, String? host, int? id, bool? isAdminAdd, String? link, String? niceDate, String? niceShareDate, String? origin, String? prefix, String? projectLink, int? publishTime, int? realSuperChapterId, bool? route, int? selfVisible, int? shareDate, String? shareUser, int? superChapterId, String? superChapterName, List<ArticleListDatasTags>? tags, String? title, int? type, int? userId, int? visible, int? zan}) {
      return ArticleListDatas()..adminAdd= adminAdd ?? this.adminAdd
			..apkLink= apkLink ?? this.apkLink
			..audit= audit ?? this.audit
			..author= author ?? this.author
			..canEdit= canEdit ?? this.canEdit
			..chapterId= chapterId ?? this.chapterId
			..chapterName= chapterName ?? this.chapterName
			..collect= collect ?? this.collect
			..courseId= courseId ?? this.courseId
			..desc= desc ?? this.desc
			..descMd= descMd ?? this.descMd
			..envelopePic= envelopePic ?? this.envelopePic
			..fresh= fresh ?? this.fresh
			..host= host ?? this.host
			..id= id ?? this.id
			..isAdminAdd= isAdminAdd ?? this.isAdminAdd
			..link= link ?? this.link
			..niceDate= niceDate ?? this.niceDate
			..niceShareDate= niceShareDate ?? this.niceShareDate
			..origin= origin ?? this.origin
			..prefix= prefix ?? this.prefix
			..projectLink= projectLink ?? this.projectLink
			..publishTime= publishTime ?? this.publishTime
			..realSuperChapterId= realSuperChapterId ?? this.realSuperChapterId
			..route= route ?? this.route
			..selfVisible= selfVisible ?? this.selfVisible
			..shareDate= shareDate ?? this.shareDate
			..shareUser= shareUser ?? this.shareUser
			..superChapterId= superChapterId ?? this.superChapterId
			..superChapterName= superChapterName ?? this.superChapterName
			..tags= tags ?? this.tags
			..title= title ?? this.title
			..type= type ?? this.type
			..userId= userId ?? this.userId
			..visible= visible ?? this.visible
			..zan= zan ?? this.zan;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArticleListDatasTags {

	late String name;
	late String url;
  
  ArticleListDatasTags();

  factory ArticleListDatasTags.fromJson(Map<String, dynamic> json) => $ArticleListDatasTagsFromJson(json);

  Map<String, dynamic> toJson() => $ArticleListDatasTagsToJson(this);

  ArticleListDatasTags copyWith({String? name, String? url}) {
      return ArticleListDatasTags()..name= name ?? this.name
			..url= url ?? this.url;
  }
    
  @override
  String toString() {
    return jsonEncode(this);
  }
}