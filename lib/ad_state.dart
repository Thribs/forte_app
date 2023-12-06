import 'dart:io';

import 'package:forte/ad_unit_id.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdState {
  Future<InitializationStatus> initializationStatus;

  AdState(this.initializationStatus);

  // @TODO: use debug logic to determine whether to use
  // test or real ads
  String get bannerAdUnitId =>
      Platform.isAndroid ? AdUnitId.testAndroidBanner : AdUnitId.testIosBanner;

  BannerAdListener get bannerAdListener => _bannerAdListener;

  final BannerAdListener _bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => print("ad loaded: ${ad.adUnitId}") ,
    onAdClosed: (ad) =>  print("ad closed: ${ad.adUnitId}"),
    onAdFailedToLoad: (ad, error) => print("ad failed to load: ${ad.adUnitId} because of error: $error"),
    onAdOpened: (ad) => print("ad opened: ${ad.adUnitId}"),
  );
}
