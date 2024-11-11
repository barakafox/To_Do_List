import 'package:dio/dio.dart';
import 'package:to_do_list/Model/todo_model.dart';

class TaskService {
  static Dio dio = Dio();

  static Future<TaskModel> fetchData() async {
    try {
      Response response = await dio.get('https://dummyjson.com/todos/user/13');
      if (response.statusCode == 200) {
        return TaskModel.fromjson(response.data);
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      throw Exception('Find The $e');
    }
  }

  static Future<void> addItem({required String newTask}) async {
    await dio.post('https://jsonplaceholder.typicode.com/posts',
        data: {"todos": newTask, "completed": false, "userId": 13});
  }
}
