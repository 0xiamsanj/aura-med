import 'package:auramed/controller/timeCtrl.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

final _time = Get.put(timeCtrl());

class upcomingDosesCtrl extends GetxController {

  // var morning = true.obs;
  var afternoon = true.obs;
  var night = true.obs;

   var morning = _time.current.toString==_time.morning.toString().obs;


}