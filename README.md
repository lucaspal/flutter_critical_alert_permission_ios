# iOS Critical Alert Permission with Flutter 

Purpose of this plugin is to let you request the permission for critical alerts on iOS from your Flutter app.

## What Are Critical Alerts

Critical alerts are an iOS only feature introduced in iOS 12. 
This feature allows apps to send critical alerts (that can be seen as special notifications) to the user,
even if `Do Not Disturb` is on or the phone is muted.

## Prerequisites

Not all apps can use this feature; it is necessary to first receive the respective entitlement from Apple.
In order to receive such entitlement you need to submit a request 
(e.g. using [this form](https://developer.apple.com/contact/request/notifications-critical-alerts-entitlement/))
specifying the scope of your app, what kind of notifications will be sent as critical alerts, how frequent
that will be and why the application needs this functionality.

NB: This process can also take a few months before being approved, having a version of the app 
on Testflight can speed up the process.

NB: As of 21/04/21 it looks like the entitlement is applicable to all apps belonging to the same Developer Account, 
rather than only to the app used to request the entitlement.

Once you have the entitlement, all you need to do is to generate a new provisioning profile including
it and use it to sign/validate the app.
 
## State of the plugin

The plugin covers a very specific use case and it does that on purpose. 
At the moment, in case of missing entitlement, it will fallback to requesting the notification
permission to the user.

## Contributing

The plugin is released with the MIT licence and you are welcome to contribute to this plugin. 

Possible areas of improvement:
- Handle edge cases in Swift code (in `SwiftFlutterCriticalAlertPermissionIosPlugin`)
- Handle more scenarios in Dart code (e.g. permission already requested, permission denied, ignore if running on Android, etc.)