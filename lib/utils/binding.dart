import 'package:charachters_app/view-model/home-view-model.dart';
import 'package:get/get.dart';

class Binding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }



}