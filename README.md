# dio_wanandroid

## 将普通Widget 

## 滚动多个Scrollable 
- 使用CustomScrollView
- 禁用一个滚动 physics: const NeverScrollableScrollPhysics()
- 列表高度固定，或者 shrinkWrap设置为true
- 要将普通widget加入可以使用 SliverToBoxAdapter 适配
`
CustomScrollView 组合 Sliver 的原理是为所有子 Sliver 提供一个共享的 Scrollable，然后统一处理指定滑动方向的滑动事件。
CustomScrollView 和 ListView、GridView、PageView 一样，都是完整的可滚动组件（同时拥有 Scrollable、Viewport、Sliver）。
CustomScrollView 只能组合 Sliver，如果有孩子也是一个完整的可滚动组件（通过 SliverToBoxAdapter 嵌入）且它们的滑动方向一致时便不能正常工作。
`
## 使用webView 时注册 ios info.plist
`
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
`
