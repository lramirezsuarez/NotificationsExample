//
//  NotificationsExampleApp.swift
//  NotificationsExample
//
//  Created by Luis Alejandro Ramirez Suarez on 20/01/25.
//

import SwiftUI

@main
struct NotificationsExampleApp: App {
    // Connect AppDelegate for push notifications
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
