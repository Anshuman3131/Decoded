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
                        .foregroundStyle(AppConstants.brandAccent)
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
                            .foregroundStyle(AppConstants.textColorBrown)
                        Text("Simply.")
                            .foregroundStyle(AppConstants.textColorBrown)
                    }
                    .font(.poppins(.bold, size: 36))
                    .foregroundStyle(AppConstants.textColorWhite)
                    
                    (Text("The day's most important tech stories - distilled to the essentials. Ask ")
                        .foregroundStyle(AppConstants.textColorWhite) +
                     Text("Decoded")
                        .foregroundStyle(AppConstants.textColorBrown) +
                     Text(" explains anything you don't get, in plain words..")
                        .foregroundStyle(AppConstants.textColorWhite))
                    .font(.poppins(.medium, size: 20))
                }

                Spacer()

// MARK: - Button
                Button {
                    hasSeenWelcome = true
                } label: {
                    Text("Get Started")
                        .font(.poppins(.semibold, size: 20))
                        .foregroundStyle(AppConstants.textColorWhite)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(AppConstants.textColorBrown)
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
