import 'package:charachters_app/data/item.dart';
import 'package:get/get.dart';

class ProductViewModel extends GetxController{

  Item item;

  RxInt _selectedImageIndex = 0.obs;
  int get selectedImageIndex => _selectedImageIndex.value;

  RxInt _selectedSizeIndex = 0.obs;
  int get selectedSizeIndex => _selectedSizeIndex.value;

  ProductViewModel(this.item);

  void selectImage(int index){
    _selectedImageIndex.value = index;
  }

  void selectSize(int index){
    _selectedSizeIndex.value = index;
  }

  void addToCart(){
    Get.back();
    Get.snackbar(item.name, "Added to cart");
  }


}