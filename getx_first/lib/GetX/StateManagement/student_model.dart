import 'package:get/get_rx/src/rx_types/rx_types.dart';

class StudentModel {
  var name = "KurbanAli".obs;
  var age = 22.obs;
}

class StudentModel2 {
  var name = "KurbanAli";
  var age = 22;
  StudentModel2({required this.name, required this.age});
}
