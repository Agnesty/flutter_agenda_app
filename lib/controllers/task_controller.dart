import 'package:get/get.dart';

import '../database/db.dart';
import '../models/task_model.dart';
import 'package:sqflite/sqflite.dart';

class TaskController extends GetxController{

  @override
  void onReady() {
    getTask();
    super.onReady();
  }

  var taskList = <Task>[].obs;

  Future<int> addTask({Task? task}) async {
    return await DB.insert(task);
  }

  void getTask() async {
    List<Map<String, dynamic>> tasks = await DB.query();
    taskList.assignAll(tasks.map((data) => Task.fromJson(data)).toList());
  }

  void delete(Task task){
   DB.delete(task);
   getTask();
  }

  void markTaskCompleted(int id) async {
    await DB.update(id);
    getTask();
  }
}