//
//  WelcomeView.swift
//  Decoded
//
//  Created by Anshuman Sharma on 26/06/26.
//

import SwiftUI

struct WelcomeView: View {
// MARK: - PROPERTIES
    @Binding var hasSeenWelcome: Bool
    @State private var currentPage: Int = 0
    
// MARK: - Body
    var body: some View {
        
// MARK: - Background Image
        ZStack {
            AppConstants.welcomeGradient
                      .ignoresSafeArea()
            
// MARK: - Text Content
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: "newspaper.fill")
                        .font(.poppins(.medium, size: 22))
                        .foregroundStyle(AppConstants.accent)
                    Text("Decoded")
                        .font(.poppins(.bold, size: 25))
                        .foregroundStyle(.white)
                }
                .padding(.top, 24)

                Spacer()
                    .frame(height: 75)

// MARK: - Headline
                VStack(alignment: .leading, spacing: 16){
                    
                    VStack(alignment: .leading, spacing: -8){
                        Text("Tech news &")
                        Text("Business, Startups")
                        Text("Explained")
                            .foregroundStyle(AppConstants.welcomeScreenTextPrimary)
                        Text("Simply.")
                            .foregroundStyle(AppConstants.welcomeScreenTextPrimary)
                    }
                    .font(.poppins(.bold, size: 36))
                    .foregroundStyle(AppConstants.onColor)
                    
                    (Text("The day's most important tech stories - distilled to the essentials. Ask ")
                        .foregroundStyle(AppConstants.onColor) +
                     Text("Decoded")
                        .foregroundStyle(AppConstants.welcomeScreenTextPrimary) +
                     Text(" explains anything you don't get, in plain words..")
                        .foregroundStyle(AppConstants.onColor))
                    .font(.poppins(.medium, size: 20))
                }

                Spacer()

// MARK: - Button
                Button {
                    hasSeenWelcome = true
                } label: {
                    Text("Get Started")
                        .font(.poppins(.semibold, size: 20))
                        .foregroundStyle(AppConstants.onColor)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(AppConstants.buttonPrimary)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            .padding(.vertical)
        }
    }
}

#Preview {
    @Previewable @State var hasSeenWelcome = false
    return WelcomeView(hasSeenWelcome: $hasSeenWelcome)
}
