
import 'fluttercontainer_platform_interface.dart';

class Fluttercontainer {
  Future<String?> getPlatformVersion() {
    return FluttercontainerPlatform.instance.getPlatformVersion();
  }
}
