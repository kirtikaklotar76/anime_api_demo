
import 'package:get/get.dart';

class AnimeDetailController extends GetxController {
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    isLoading(true);
    getAnimeDetail();
    update();
    isLoading(false);
    // TODO: implement onInit
    super.onInit();
  }

  getAnimeDetail() {
    final data = Get.arguments;
    update();
    return data;
  }
}
