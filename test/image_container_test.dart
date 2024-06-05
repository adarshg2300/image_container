import 'package:flutter_test/flutter_test.dart';
import 'package:image_container/image_container.dart';
import 'package:image_container/image_container_platform_interface.dart';
import 'package:image_container/image_container_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockImageContainerPlatform
    with MockPlatformInterfaceMixin
    implements ImageContainerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ImageContainerPlatform initialPlatform = ImageContainerPlatform.instance;

  test('$MethodChannelImageContainer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelImageContainer>());
  });

  test('getPlatformVersion', () async {
    ImageContainer imageContainerPlugin = ImageContainer();
    MockImageContainerPlatform fakePlatform = MockImageContainerPlatform();
    ImageContainerPlatform.instance = fakePlatform;

    expect(await imageContainerPlugin.getPlatformVersion(), '42');
  });
}
