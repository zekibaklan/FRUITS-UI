//
//  ContentView.swift
//  Fructus
//
//  Created by Zeki Baklan on 6.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings : Bool = false
    
    var body: some View {
      
        NavigationView {
            List{
                ForEach(fruits.shuffled()) {
                    item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                        .padding(.vertical,4)
                    }
                 
                  
                }
            }
            
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }) //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
            
            
        }//: NAVIGATION
      
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(fruits: fruitsData)
    }
}
