import 'package:flutter_threads_ui/data/data.dart';
import 'package:flutter_threads_ui/data/thread.dart';

abstract class Ithread {
  List<thread> getThread();
}

class ThreadRemoteDataSouerce extends Ithread {
  @override
  List<thread> getThread() {
    return listThreads
        .map((jsonObject) => thread.fromJson(jsonObject))
        .toList();
  }
}
