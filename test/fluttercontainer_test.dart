import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercontainer/fluttercontainer.dart';
import 'package:fluttercontainer/fluttercontainer_platform_interface.dart';
import 'package:fluttercontainer/fluttercontainer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFluttercontainerPlatform
    with MockPlatformInterfaceMixin
    implements FluttercontainerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FluttercontainerPlatform initialPlatform = FluttercontainerPlatform.instance;

  test('$MethodChannelFluttercontainer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFluttercontainer>());
  });

  test('getPlatformVersion', () async {
    Fluttercontainer fluttercontainerPlugin = Fluttercontainer();
    MockFluttercontainerPlatform fakePlatform = MockFluttercontainerPlatform();
    FluttercontainerPlatform.instance = fakePlatform;

    expect(await fluttercontainerPlugin.getPlatformVersion(), '42');
  });
}
