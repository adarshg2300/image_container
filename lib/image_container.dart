
import 'image_container_platform_interface.dart';

class ImageContainer {
  Future<String?> getPlatformVersion() {
    return ImageContainerPlatform.instance.getPlatformVersion();
  }
}
