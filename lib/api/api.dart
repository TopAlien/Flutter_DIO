class Api {
  static String BASE_URL = "https://www.wanandroid.com";

  /// 文章列表 - 参数：页码，拼接在连接中，从0开始。
  static String articleApi = "/article/list/0/json";

  /// 置顶文章
  static String topArticleApi = "/article/top/json";

  /// 首页Banner
  static String bannerApi = "/banner/json";

  /// 常用网站
  static String everySiteApi = "/friend/json";

  /// 搜索热词
  static String hotkeyApi = "/hotkey/json";

  /// 体系数据
  static String treeApi = "/tree/json";

  /// 体系下的文章 - cid 分类的id，上述二级目录的id；页码：拼接在链接上，从0开始
  static String tree2ArticleApi = "/article/list/0/json?cid=60";

  /// 根据作者搜索文章 - 页码：拼接在链接上，从0开始; author：作者昵称，不支持模糊匹配。
  static String articleByAuthorApi = "/article/list/0/json?author=鸿洋";

}