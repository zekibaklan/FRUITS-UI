//
//  SettingsView.swift
//  Fructus
//
//  Created by Zeki Baklan on 7.09.2023.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    
    
    
    //MARK: - BODY
    
    
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false)
            {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                           SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    )
                    
                    {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat , sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber,vitamins,and much more.")
                                .font(.footnote)
                        }

                        
                    }
                    
                    //MARK: - SECTION 2
                    
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 80)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                             
                        }
                        
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        
                        
                        
                        )
                    
                    }
                             
                             
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                   label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                  
                    
                    ) {
                    
                     
                        SettingsRowView(name: "Developer",content: "Zeki Baklan")
                        SettingsRowView(name: "Compatibility",content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "zekibaklan.com", linkDestination: "zekibaklan.github.io")
                        SettingsRowView(name: "Twitter",linkLabel: "@byakuya25493155",linkDestination: "twitter.com/byakuya25493155")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    
                        
                        
                    }
                    
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding( )
                .navigationBarItems(
                    trailing:
                      Button(action: {
                        presentationMode.wrappedValue.dismiss()
                      }) {
                        Image(systemName: "xmark")
                      })
                  
                
            }//: SCROLL
        }//: NAVIGATION
       
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
