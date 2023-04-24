import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fluttercontainer_platform_interface.dart';

/// An implementation of [FluttercontainerPlatform] that uses method channels.
class MethodChannelFluttercontainer extends FluttercontainerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fluttercontainer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
