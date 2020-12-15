#import "FlutterCriticalAlertPermissionIosPlugin.h"
#if __has_include(<flutter_critical_alert_permission_ios/flutter_critical_alert_permission_ios-Swift.h>)
#import <flutter_critical_alert_permission_ios/flutter_critical_alert_permission_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_critical_alert_permission_ios-Swift.h"
#endif

@implementation FlutterCriticalAlertPermissionIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCriticalAlertPermissionIosPlugin registerWithRegistrar:registrar];
}
@end
