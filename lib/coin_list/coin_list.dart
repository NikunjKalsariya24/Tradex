import 'package:screen_f/utils/Custom_wallet_data.dart';
import 'package:screen_f/utils/all_assets.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:screen_f/utils/custom_tradex_suggestion.dart';
import 'package:sizer/sizer.dart';

class CoinList {
  static List coinName = [
    AppString.btc,
    AppString.eth,
    AppString.bnb,
    AppString.chz,
    AppString.kbr,
    AppString.ada
  ];

  static List coinFullName = [
    AppString.bitCoin,
    AppString.ethCoin,
    AppString.bnbCoin,
    AppString.chzCoin,
    AppString.kbrCoin,
    AppString.kbrCoin,
  ];
  static List coinValue = [
    AppString.btcValue,
    AppString.ethValue,
    AppString.bnbValue,
    AppString.chzValue,
    AppString.kbrValue,
    AppString.adaValue
  ];

  static List coinValueDifferance = [
    AppString.btcValueDifferance,
    AppString.ethValueDifferance,
    AppString.bnbValueDifferance,
    AppString.chzValueDifferance,
    AppString.kbrValueDifferance,
    AppString.adaValueDifferance
  ];

  static List coinImages = [
    ImageAssets.btcImagePath,
    ImageAssets.ethImagePath,
    ImageAssets.bnbImagePath,
    ImageAssets.chzImagePath,
    ImageAssets.kbrImagePath,
    ImageAssets.adaImagePath,
  ];

  static List coinBtcImages = [
    ImageAssets.btcImagePath,
    ImageAssets.ethImagePath,
    ImageAssets.bnbImagePath,
    ImageAssets.chzImagePath,
    ImageAssets.kbrImagePath,
    ImageAssets.adaImagePath,
    ImageAssets.btcImagePath,
    ImageAssets.ethImagePath,
    ImageAssets.bnbImagePath,
    ImageAssets.chzImagePath,
    ImageAssets.kbrImagePath,
    ImageAssets.adaImagePath,
  ];
  static List coinGraph = [
    ImageAssets.btcGraphImagePath,
    ImageAssets.ethGraphImagePath,
    ImageAssets.bnbGraphImagePath,
    ImageAssets.chzGraphImagePath,
    ImageAssets.kbrGraphImagePath,
    ImageAssets.adaGraphImagePath,
  ];

  static List btcCoinGraph = [
    ImageAssets.btcGraphImagePath,
    ImageAssets.ethGraphImagePath,
    ImageAssets.bnbGraphImagePath,
    ImageAssets.chzGraphImagePath,
    ImageAssets.kbrGraphImagePath,
    ImageAssets.adaGraphImagePath,
    ImageAssets.btcGraphImagePath,
    ImageAssets.ethGraphImagePath,
    ImageAssets.bnbGraphImagePath,
    ImageAssets.chzGraphImagePath,
    ImageAssets.kbrGraphImagePath,
    ImageAssets.adaGraphImagePath,
  ];

  List<String> vectorTabBar = [
    AppString.crypto,
    AppString.stokes,
    AppString.forex
  ];

  static List toggleData = [
    CustomText(
      name: AppString.crypto,
      fontSize: 12.sp,
      color: AppColor.colorWhiteText,
    ),
    CustomText(
      name: AppString.stokes,
      fontSize: 12.sp,
      color: AppColor.colorWhiteText,
    ),
    CustomText(
      name: AppString.forex,
      fontSize: 12.sp,
      color: AppColor.colorWhiteText,
    ),
  ];

  static List<dynamic> allAssets = [
    AllAssets(
        coinName: AppString.btc,
        coinFName: AppString.bitCoin,
        coinPrice: AppString.btcPrice,
        coinBitCoinPrice: AppString.btcCoinPrice,
        coinDifferance: AppString.btcDiffRance),
    AllAssets(
        coinName: AppString.eth,
        coinFName: AppString.ethCoin,
        coinPrice: AppString.ethPrice,
        coinBitCoinPrice: AppString.ethCoinPrice,
        coinDifferance: AppString.ethDiffRance),
    AllAssets(
        coinName: AppString.bnb,
        coinFName: AppString.bnbCoin,
        coinPrice: AppString.btcPrice,
        coinBitCoinPrice: AppString.bnbCoinPrice,
        coinDifferance: AppString.bnbDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
    AllAssets(
        coinName: AppString.xmr,
        coinFName: AppString.xmrFName,
        coinPrice: AppString.xmrPrice,
        coinBitCoinPrice: AppString.xmrCoinPrice,
        coinDifferance: AppString.xmrDiffRance),
  ];

  static List<CustomWallet> walletTransaction = [
    CustomWallet(
        imageDAta: ImageAssets.arrowDownLeft,
        tranJecTioN: AppString.btcReceived,
        tranJecTioNTime: AppString.btcDateCurrent,
        coinPrice: AppString.btcEThL,
        differance: AppString.btcPlusPercentages),
    CustomWallet(
        imageDAta: ImageAssets.arrowUpRightPath,
        tranJecTioN: AppString.btcSend,
        tranJecTioNTime: AppString.btcDateCurrent,
        coinPrice: AppString.btcBnBl,
        differance: AppString.btcPercentages),
    CustomWallet(
        imageDAta: ImageAssets.arrowUpImagesPath,
        tranJecTioN: AppString.btcWithdraw,
        tranJecTioNTime: AppString.btcDateCurrent,
        coinPrice: AppString.btcBnBo,
        differance: AppString.btcWithdrawalPercentages),
    CustomWallet(
        imageDAta: ImageAssets.arrowDownLeft,
        tranJecTioN: AppString.btcReceived,
        tranJecTioNTime: AppString.btcDateCurrent,
        coinPrice: AppString.btcBnBp,
        differance: AppString.btcPlusPercentages),
    CustomWallet(
        imageDAta: ImageAssets.arrowDownLeft,
        tranJecTioN: AppString.btcReceived,
        tranJecTioNTime: AppString.btcDateCurrent,
        coinPrice: AppString.btcAdA,
        differance: AppString.btcPlusPercentages)
  ];

  static List<CustomTradeXSuggestion> tradeSuggestion = [
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeAVax,
        tradeName: AppString.btcBuSd,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcBuSd,
        tradePrice: AppString.btcBuSdPrice),
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeBuSd,
        tradeName: AppString.btcAvAx,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcAvalanche,
        tradePrice: AppString.btcBuSdPrice),
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeUsDt,
        tradeName: AppString.btcUsDt,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcTetherUS,
        tradePrice: AppString.btcBuSdPrice),
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeAVax,
        tradeName: AppString.ada,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcBuSd,
        tradePrice: AppString.btcBuSdPrice),
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeBuSd,
        tradeName: AppString.btcBuSd,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcAvalanche,
        tradePrice: AppString.btcBuSdPrice),
    CustomTradeXSuggestion(
        tradeImage: ImageAssets.tradeUsDt,
        tradeName: AppString.btcAvAx,
        tradeDescription: AppString.btcDescription,
        tradeFullName: AppString.btcTetherUS,
        tradePrice: AppString.btcBuSdPrice),
  ];
}
