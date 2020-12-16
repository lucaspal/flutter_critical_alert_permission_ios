import Flutter
import UIKit

public class SwiftFlutterCriticalAlertPermissionIosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_critical_alert_permission_ios", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterCriticalAlertPermissionIosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
    
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if ("requestCriticalAlertPermission".elementsEqual(call.method)) {
        if #available(iOS 10.0, *) {
            requestAuthorization(completion: nil)
        } else {
            // Fallback on earlier versions
        }
    }
  }

    
    
    @available(iOS 10.0, *)
    func requestAuthorization(completion: ((Bool, Error?) -> Void)?) {
       let options: UNAuthorizationOptions

       if #available(iOS 12.0, *) {
           options = [.alert, .badge, .sound, .criticalAlert]
       } else {
           options = [.alert, .badge, .sound]
       }

        do {
            try UNUserNotificationCenter.current().requestAuthorization(options: options) { (granted, error) in
                completion?(granted, error) }
            } catch {
                print("An error happened when requesting authorization.")
            }

   }

// Does not compile yet.
//   @available(iOS 10.0, *)
//    func isCriticalPermissionEnabled() -> Bool {
//        return UNUserNotificationCenter.current().getNotificationSettings(completion: (settings) {
//            return settings.criticalAlertSetting == UNNotificationSetting.enabled
//        })
//    }
}
