//
//  StarButtonView.swift
//  Fructus
//
//  Created by Zeki Baklan on 6.09.2023.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - BODY
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK: - PROPORTIES
    var body: some View {
        Button {
            isOnboarding = false
            
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical,10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        } //: BUTTON
        .accentColor(Color.white)
    }
}
//MARK: - PREVIEW
struct StarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
