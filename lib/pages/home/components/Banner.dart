import 'package:dio_wanandroid/model/banner_home_entity.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:dio_wanandroid/api/api.dart';
import 'package:dio_wanandroid/dio_util/dio_util.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  List<BannerHomeEntity> bannerList = [];

  void fetchBannerList() async {
    List<BannerHomeEntity>? res =
    await DioUtil().request<List<BannerHomeEntity>>(Api.bannerApi);
    setState(() {
      bannerList = res;
    });
  }

  @override
  void initState() {
    super.initState();

    fetchBannerList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            bannerList[index].imagePath,
            fit: BoxFit.fill,
          );
        },
        itemCount: bannerList.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          size: 26,
        ),
        itemHeight: 200.0,
      ),
    );
  }
}
