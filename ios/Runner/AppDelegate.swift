import UIKit
import Flutter

import flutter_local_notifications

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

 [GMSServices provideAPIKey:@"AIzaSyCK8fNd2TgsNGTbFS5XCMn-Kps0KhctbBk"];
  [GeneratedPluginRegistrant registerWithRegistry:self];

    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
    GeneratedPluginRegistrant.register(with: registry)}

    GeneratedPluginRegistrant.register(with: self)
    
      if #available(iOS 10.0, *) {
         UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
      }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
