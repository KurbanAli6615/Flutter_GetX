import 'package:get/state_manager.dart';
import 'package:getx_first/GetX/StateManagement/student_model.dart';

class MyController extends GetxController {
  RxInt value = 1.obs;
  var student = StudentModel();
  bool isUpper1 = false;
  bool isUpper2 = false;

  final student2 = StudentModel2(age: 20, name: 'KurbanAli').obs;

  @override
  void onInit() {
    super.onInit();
    increment();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    value++;
  }

  void autoIncrement() async {
    await Future<int>.delayed(Duration(seconds: 3));
    value++;
  }

  void upperTheName() {
    if (isUpper1) {
      student.name.value = student.name.value.toLowerCase();
      isUpper1 = !isUpper1;
    } else {
      student.name.value = student.name.value.toUpperCase();
      isUpper1 = !isUpper1;
    }
  }

  void upperTheNameByClass() {
    student2.update((studentIn) {
      if (isUpper2) {
        studentIn?.name = studentIn.name.toLowerCase();
        isUpper2 = !isUpper2;
      } else {
        studentIn?.name = studentIn.name.toUpperCase();
        isUpper2 = !isUpper2;
      }
    });
  }
}
