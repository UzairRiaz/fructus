//
//  SettingsView.swift
//  Fructus
//
//  Created by Umair Riaz on 30/06/2021.
//

import SwiftUI

struct SettingsView: View {
    
    
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabelView(labelText:"Frucutus", labelImage: "info.circle"), content: {
                        Divider().padding(.vertical, 4)
                        HStack{
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most of the Fruits are naturally low in fats, Sodium and calories. None have calestorols...... Learn More.")
                                .font(.footnote)
                        }
                        
                    })
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {presentationMode.wrappedValue.dismiss()}, label: {Image(systemName: "xmark")}))
                .padding()
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
    }
}
