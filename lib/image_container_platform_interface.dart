import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'image_container_method_channel.dart';

abstract class ImageContainerPlatform extends PlatformInterface {
  /// Constructs a ImageContainerPlatform.
  ImageContainerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ImageContainerPlatform _instance = MethodChannelImageContainer();

  /// The default instance of [ImageContainerPlatform] to use.
  ///
  /// Defaults to [MethodChannelImageContainer].
  static ImageContainerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImageContainerPlatform] when
  /// they register themselves.
  static set instance(ImageContainerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
