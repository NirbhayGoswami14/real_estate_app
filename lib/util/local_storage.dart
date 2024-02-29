import 'package:get_storage/get_storage.dart';

class LocalStorage
{
  static late GetStorage storage;

  static var ISLOGGED="isLogged";
  static var ONBOARDING="onBoarding";


  LocalStorage()
  {
     storage=GetStorage("myData");
  }

  void setIsLogged(bool value)
  {
    storage.write(ISLOGGED, value);
    storage.save();
  }

  bool isLogged()
  {
    return storage.read(ISLOGGED);
  }
  void setIsOnBoard(bool value) async
  {
    storage.writeInMemory(ONBOARDING, value);
    storage.save();
  }

  bool isOnBoard()
  {

    return storage.read(ONBOARDING)??true;
  }

  void getValue(String key)
  {
    storage.read(key);
}
}