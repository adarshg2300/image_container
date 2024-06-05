#include "include/image_container/image_container_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "image_container_plugin.h"

void ImageContainerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  image_container::ImageContainerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
