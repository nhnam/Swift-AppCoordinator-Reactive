//
//  AppDelegate.swift
//  MVVM-CSample
//
//  Created by ナム Nam on 18/1/21.
//
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let appCoordinator =  AppCoordinator()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        appCoordinator.start()
        return true
    }

}
