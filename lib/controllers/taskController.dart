import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todoapp/db/db_helper.dart';
import 'package:todoapp/model/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }
}