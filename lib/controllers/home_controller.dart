import 'package:anime_api_demo/helpers/home_api_helper.dart';
import 'package:anime_api_demo/models/anime_model.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  RxList<AnimeModel> allAnimeData = <AnimeModel>[].obs;
  RxBool isLoading = false.obs;
  Logger logger = Logger();

  @override
  Future<void> onInit() async {
    isLoading(true);
    await getAllAnime();
    isLoading(false);
    update();
    super.onInit();
  }

  Future<List<AnimeModel>> getAllAnime() async {
    allAnimeData.value = (await AnimeHelper.animeHelper.getAnime())!;
    logger.d("AllAnimee : ${allAnimeData}");
    update();
    return allAnimeData;
  }
}
