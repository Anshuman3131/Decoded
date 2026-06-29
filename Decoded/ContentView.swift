//
//  ContentView.swift
//  Decoded
//
//  Created by Anshuman Sharma on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    // Single source of truth for the pre-auth flow.
    // @AppStorage persists it across launches, so the user only sees Welcome once.
    @AppStorage("hasSeenWelcome") private var hasSeenWelcome = false
    // True while we decide where to route. Later this covers the real
    // Supabase session check; for now it's a brief splash.
    @State private var isCheckingSession = true
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if isCheckingSession {
                splashView
            } else if hasSeenWelcome {
                AuthView()
            } else {
                WelcomeView(hasSeenWelcome: $hasSeenWelcome)
                    .transition(.move(edge: .bottom))
            }
        }
        .animation(.easeInOut(duration: 0.4), value: hasSeenWelcome)
        .animation(.easeInOut(duration: 0.4), value: isCheckingSession)
        .task {
            // TODO: replace this delay with a real Supabase session check.
            // e.g. check currentSession → route to Home if logged in.
            try? await Task.sleep(for: .seconds(1.2))
            isCheckingSession = false
        }
    }
    
    // MARK: - SPLASHVIEW
    private var splashView: some View {
        ZStack {
            AppConstants.welcomeGradient
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Image(systemName: "newspaper.fill")
                    .font(.poppins(.medium, size: 50))
                    .foregroundStyle(AppConstants.accent)
                Text("Decoded")
                    .font(.poppins(.bold, size: 25))
                    .foregroundStyle(AppConstants.onColor)
            }
        }
    }
}

// MARK: - END

#Preview {
    ContentView()
}
