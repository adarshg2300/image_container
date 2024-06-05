//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <image_container/image_container_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) image_container_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ImageContainerPlugin");
  image_container_plugin_register_with_registrar(image_container_registrar);
}
