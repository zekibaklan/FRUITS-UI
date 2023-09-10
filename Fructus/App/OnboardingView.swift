//
//  OnboardingView.swift
//  Fructus
//
//  Created by Zeki Baklan on 6.09.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: -  PROPORTIES
    
    var fruits : [Fruit] = fruitsData
    
    //MARK: -  BODY

    
    var body: some View {
        
        
        TabView {
            ForEach(fruits[0...5]) {
                item in
                FruidCardView(fruit: item)
            
            }//: LOOP
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
        
    }
}
//MARK: -  PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
