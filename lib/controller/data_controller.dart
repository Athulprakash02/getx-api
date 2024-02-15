import 'package:get/get.dart';
import 'package:getx_api/model/datamodel.dart';
import 'package:getx_api/services/data_service.dart';

class DataController extends GetxController {
  var dataModel = DataModel().obs;
  getData() async {
    try {
      var data = await DataServices().getService();
      if (data != null) {
        dataModel.value = data;
      }
    } catch (e) {
      Get.snackbar('title', e.toString());
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
