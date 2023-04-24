import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fluttercontainer_method_channel.dart';

abstract class FluttercontainerPlatform extends PlatformInterface {
  /// Constructs a FluttercontainerPlatform.
  FluttercontainerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FluttercontainerPlatform _instance = MethodChannelFluttercontainer();

  /// The default instance of [FluttercontainerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFluttercontainer].
  static FluttercontainerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FluttercontainerPlatform] when
  /// they register themselves.
  static set instance(FluttercontainerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
