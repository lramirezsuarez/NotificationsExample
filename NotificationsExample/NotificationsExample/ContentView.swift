//
//  ContentView.swift
//  NotificationsExample
//
//  Created by Luis Alejandro Ramirez Suarez on 20/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "No notifications received yet."
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Push Notifications Example")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Text(message)
                .padding()
                .foregroundColor(.secondary)
            
            Button("Send Test Notification") {
                sendTestNotification()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
    
    func sendTestNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Test Notification"
        content.body = "This is a test notification sent from the app."
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error adding test notification: \(error.localizedDescription)")
            } else {
                print("Test notification scheduled.")
            }
        }
    }
}

#Preview {
    ContentView()
}
