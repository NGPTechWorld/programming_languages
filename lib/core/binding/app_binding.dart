import 'package:get/get.dart';
import 'package:ngpiteapp/app/services/local_storage/cache_service_getstorage.dart';
import 'package:ngpiteapp/data/repositories/locations_repositories.dart';
import 'package:ngpiteapp/data/repositories/users_repositories.dart';

import 'package:ngpiteapp/screens/start_page/start_page_logic.dart';
import '/app/services/api/dio_consumer.dart';
import '/app/services/connection/network_info.dart';
import '../../app/services/local_storage/cache_services_with_sharedpreferences.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CacheServiceGetStorage());
    Get.put(DioConsumer());
    Get.put(ImpUsersRepositories(api: Get.find<DioConsumer>()));
    Get.put(StartPageBinging()).dependencies();
    Get.put(NetworkInfoImpl());
    Get.put(ImpLocationsRepositories(api: Get.find<DioConsumer>()));
  }

  Future<void> initializes() async {
    Get.put(CacheServicesSharedPreferences());
    await Get.find<CacheServicesSharedPreferences>().init();
  }
}
