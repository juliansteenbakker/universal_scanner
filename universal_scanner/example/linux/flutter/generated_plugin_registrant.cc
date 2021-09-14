//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <universal_scanner/universal_scanner_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) universal_scanner_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "universal_scannerPlugin");
  universal_scanner_plugin_register_with_registrar(universal_scanner_registrar);
}
