#import "MetaSdkPlugin.h"
#if __has_include(<meta_sdk/meta_sdk-Swift.h>)
#import <meta_sdk/meta_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "meta_sdk-Swift.h"
#endif

@implementation MetaSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMetaSdkPlugin registerWithRegistrar:registrar];
}
@end
