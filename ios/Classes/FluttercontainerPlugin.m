#import "FluttercontainerPlugin.h"
#if __has_include(<fluttercontainer/fluttercontainer-Swift.h>)
#import <fluttercontainer/fluttercontainer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttercontainer-Swift.h"
#endif

@implementation FluttercontainerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttercontainerPlugin registerWithRegistrar:registrar];
}
@end
