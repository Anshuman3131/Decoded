//
//  WelcomeView.swift
//  Decoded
//
//  Created by Anshuman Sharma on 26/06/26.
//

import SwiftUI

struct WelcomeView: View {
// MARK: - PROPERTIES
    @State private var currentPage: Int = 0
    
// MARK: - Body
    var body: some View {
        
// MARK: - Background Image
        ZStack {
            Image("WelcomeBackgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
// MARK: - Text Content
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: "newspaper.fill")
                        .font(.system(size: 22, weight: .medium))
                        .foregroundStyle(AppConstants.brandAccent)
                    Text("Decoded")
                        .font(.poppins(.bold, size: 25))
                        .foregroundStyle(.white)
                }
                .padding(.top, 24)

                Spacer()

// MARK: - Headline
                VStack(alignment: .leading, spacing: 16){
                    VStack(alignment: .leading, spacing: -8){
                        Text("Tech news,")
                        Text("Explained")
                        Text("Simply.")
                    }
                    .font(.poppins(.bold, size: 44))
                    .foregroundStyle(AppConstants.textColorWhite)
                    
                    (Text("The day's most important tech stories - distilled to the essentials. Ask ")
                        .foregroundStyle(AppConstants.textColorWhite) +
                     Text("Decoded")
                        .foregroundStyle(AppConstants.brandAccent) +
                     Text(" explains anything you don't get, in plain words..")
                        .foregroundStyle(AppConstants.textColorWhite))
                    .font(.poppins(.medium, size: 22))
                }

                Spacer()

// MARK: - Button
                Button {

                } label: {
                    Text("Get Started")
                        .font(.poppins(.semibold, size: 20))
                        .foregroundStyle(AppConstants.textColorWhite)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(AppConstants.brandAccent)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
            .padding(.vertical)
        }
    }
}

#Preview {
    WelcomeView()
}
