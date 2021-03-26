abstract class ITimeRepository {
  Future<DateTime> now();
}

class OSTimeRepository implements ITimeRepository {
  Future<DateTime> now() async {
    return DateTime.now();
  }
}

class InternetTimeRepository implements ITimeRepository {
  @override
  Future<DateTime> now() {
    // TODO: implement now
    throw UnimplementedError();
  }
}
